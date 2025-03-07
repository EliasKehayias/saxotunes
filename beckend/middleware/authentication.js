import bcrypt from 'bcrypt'
import jwt from 'jsonwebtoken'
import dotenv from 'dotenv';
dotenv.config()

export const hashingfunction = async (password)=>{
    return await bcrypt.hash(password, 10)
   
}

export const checkPassword = async (req,res,next)=>{
    //fx get pwd from
}

// const getUsers = async () => {
//     let [data] = await pools.query('SELECT * FROM users')
//     return data
// }

// // console.log( await getUsers());

// const getUser = async (id) => {
//     let [data] = await pools.query('SELECT * FROM users WHERE id = ?', [id])
//     return data[0]
// }
// // console.log(await getUser());


// const insertUser = async (username, email, password) => {{username, email, password}}

// const signToken =  (email)=>{
//     let token=jwt.sign({email:email}, process.env.USERPWD3,{expiresIn:'5d'})
//     console.log(token);
// }
// signToken('abf14cpt@gmail.com')

// eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFiZjE0Y3B0QGdtYWlsLmNvbSI
// sImlhdCI6MTc0MDY2NDg1MSwiZXhwIjoxNzQxMDk2ODUxfQ.yzfm4jHD9O0hdGgBWLT5eyqrIn8r
// TnrwlbLDXINYE0s
// const verifyToken =()=>{
//     let result = jwt.verify
//     ('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFiZjE0Y3B0QGdtYWlsLmNvbSsImlhdCI6MTc0MDY2NDg1MSwiZXhwIjoxNzQxMDk2ODUxfQ.yzfm4jHD9O0hdGgBWLT5eyqrIn8rTnrwlbLDXINYE0s'
//     ,process.env.USERPWD3)
//     console.log(result)}

// verifyToken()

// bcrypt.compare(pwd,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFiZjE0Y3B0QGdtYWlsLmNvbSsImlhdCI6MTc0MDY2NDg1MSwiZXhwIjoxNzQxMDk2ODUxfQ.yzfm4jHD9O0hdGgBWLT5eyqrIn8rTnrwlbLDXINYE0s',(err, result)=>{
//     if (err) throw err
//     console.log(result) // true if passwords match, false otherwise
//     let token =jwt.sign({email},process.env.USERPWD3,{expiresIn:10})
//     console.log(token)
// })
