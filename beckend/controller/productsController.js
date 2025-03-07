import { getProducts,getProductById, insertProducts, deleteProducts, updateProducts}from '../model/productsModel.js'


const getProductsCon = async (req,res)=>{
    res.json({ProductsGet: await getProducts()})}
    
const getProductByIdCon = async (req,res)=>{
    res.json({ProductsGetByID: await getProductById(req.params.idproducts)})
}
    
const insertProductsCon = async (req,res)=>{
    let {products_name, description, price, img_1, img_2, img_3}=req.body
    res.json({ProductsPost: await insertProducts(products_name, description, price, img_1, img_2, img_3)})
}

const deleteProductsCon = async (req,res)=>{
    res.json({ProductsDelete: await deleteProducts(req.params.idproducts)})
}

const updateProductsCon = async (req,res)=>{
    let {idproducts, products_name, description, price, img_1, img_2, img_3}=req.body
    res.json({ProductsPatch: await updateProducts(idproducts, products_name, description, price, img_1, img_2, img_3)})
}

export {getProductsCon,getProductByIdCon, insertProductsCon, deleteProductsCon, updateProductsCon}