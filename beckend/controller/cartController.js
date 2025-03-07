import { getCart, insertCart, deleteCart, updateCart} from '../model/cartModel.js'


const getCartCon = async (req,res)=>{
    res.json({CartGet: await getCart()})}
    
const insertCartCon = async (req,res)=>{
    let {name,price,image}=req.body
    res.json({CartPost: await insertCart(name,price,image)})
}

const deleteCartCon = async (req,res)=>{
    res.json({CartDelete: await deleteCart(req.params.idcart)})
}

const updateCartCon = async (req,res)=>{
    let {idcart,name,price,image}=req.body
    res.json({CartPatch: await updateCart(idcart,name,price,image)})
}

export {getCartCon, insertCartCon, deleteCartCon, updateCartCon}