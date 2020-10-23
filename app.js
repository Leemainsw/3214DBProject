const express = require('express');
const app = express();
const port = 3000;

// session 설정
const options=require('./model/database');

// view 설정
app.set('views', './views');
app.set('view engine', 'ejs');
app.locals.pretty = true;

// app.use(bodyParser.urlencoded({extended: false}));
app.use(express.static(__dirname + '/public'));
// app.use(methodOverride('_method'));

const signinRouter = require('./routes/signin');
app.use('/signin', signinRouter);

app.get('/', (req, res)=>{
    res.send('<h1>Hello World</h1>');
})

app.listen(port, (req, res)=>{
    console.log('Connected express server');
})