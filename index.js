import express from 'express'
const app = express()
const PORT = 3000;

app.get('/', (req, res) => {
  console.log('Hello')
  res.send('Hello world')
})

app.listen(PORT, () => console.log(`App running port ${PORT}`))
