import { hashingfunction } from '../middleware/authentication.js'
import { getUsers, insertUsers, deleteUsers, updateUsers} from '../model/usersModel.js'


const getUsersCon = async (req,res)=>{
    res.json({UsersGet: await getUsers()})}
    
const insertUsersCon = async (req,res)=>{
    let {name,surname,email,password}=req.body
    let hashedPassword = await hashingfunction(password)
    res.json({UsersPost: await insertUsers(name,surname,email,hashedPassword)})
}

const deleteUsersCon = async (req,res)=>{
    res.json({UsersDelete: await deleteUsers(req.params.idusers)})
}

const updateUsersCon = async (req,res)=>{
    let {idusers,name,surname,email,password}=req.body
    res.json({UsersPatch: await updateUsers(idusers,name,surname,email,password)})
}

export {getUsersCon, insertUsersCon, deleteUsersCon, updateUsersCon}