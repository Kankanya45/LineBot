const https = require("https");
const express = require("express");
const mysql = require("mysql");

const app = express();
const PORT = process.env.PORT || 3000;
const TOKEN = 'j8Ka/IKueNcebzVZUs6MMt98t+2Akcu40a9jiiECJyMpbYYlzKWxcRJIlLVzo7dCcsQVTY6bOhIlEnLYD1TA/3DH2GNJYGWenK3QcFKplWkiebCtlDkpu+Lz0M7nWngiHNu2m68SsMPrHSOUJAB+tAdB04t89/1O/w1cDnyilFU=';

const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "line_db"
});

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get("/", (req, res) => {
  res.send('สวัสดี express webhook');
});

con.connect((err) => {
  if (err) {
    console.error('Error connecting to database: ', err);
    return;
  }
  console.log('Connected to database');
});

app.listen(PORT, () => {
  console.log(`Example app listening at http://localhost:${PORT}`);
});

app.post("/webhook", (req, res) => {
  console.log('req.body =>', JSON.stringify(req.body, null, 2)); // Log the incoming message data

  // Check if the incoming event is a message
  if (req.body.events && req.body.events.length > 0) {
    
    const messageEvent = req.body.events[0];
    const message = messageEvent.message;
    const userId = messageEvent.source.userId;
    const emojis = message.emojis ? JSON.stringify(message.emojis) : null;
    const messageType = message.type;
    const messageText = message.text;
    


    // Insert message data into MySQL database
    const sql = `INSERT INTO messages (id, type, text, user_id, quote_token, emojis) 
                 VALUES (?, ?, ?, ?, ?, ?)`;
    const values = [message.id, messageType, messageText, userId, message.quoteToken, emojis];

    con.query(sql, values, (err, result) => {
      if (err) throw err;
      console.log("Message data inserted into database");
    });

    // Handle reply logic here if needed
    let replyMessages = [];

    if (messageType === "text") {
      if (messageText === "สวัสดี") {
        replyMessages.push({ type: "text", text: "สวัสดีค่ะ มีอะไรให้ช่วยเหลือคะ?" });
      } else if (messageText === "ขอบคุณ") {
        replyMessages.push({ type: "text", text: "ยินดีค่ะ" });
      } else if (messageText === "ชื่ออะไร") {
        replyMessages.push({ type: "text", text: "ชื่อฉันคือบอทค่ะ" });
      } else if (messageText === "ทำอะไรได้บ้าง") {
        replyMessages.push({ type: "text", text: "ฉันสามารถตอบคำถามพื้นฐานได้เท่านั้นค่ะ" });
      } else {
        replyMessages.push({ type: "text", text: "ขอโทษค่ะ ฉันไม่เข้าใจข้อความของคุณ" });
      }
    } else {
      replyMessages.push({ type: "text", text: "ขอโทษค่ะ ฉันเข้าใจเฉพาะข้อความเท่านั้น" });
    }

    // Send reply message to LINE
    const replyData = {
      replyToken: messageEvent.replyToken,
      messages: replyMessages
    };

    const headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer " + TOKEN
    };

    const webhookOptions = {
      hostname: "api.line.me",
      path: "/v2/bot/message/reply",
      method: "POST",
      headers: headers
    };

    const request = https.request(webhookOptions, (response) => {
      response.on("data", (d) => {
        process.stdout.write(d);
      });
    });
    

    request.on("error", (err) => {
      console.error(err);
    });

    request.write(JSON.stringify(replyData));
    request.end();
  } else {
    console.log("No message events found.");
    res.status(200).send("No message events found.");
  }
});


