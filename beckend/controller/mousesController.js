import { getMouses, insertMouses, deleteMouses, updateMouses} from '../model/mousesModel.js';

const getMousesCon = async (req,res)=>{
    res.json({MousesGet: await getMouses()})}
    
const insertMousesCon = async (req,res)=>{
    let {mouse_name, description, mouse_price, mouse_images}=req.body
    res.json({MousesPost: await insertMouses( mouse_name, description, mouse_price, mouse_images)})
}

const deleteMousesCon = async (req,res)=>{
    res.json({MousesDelete: await deleteMouses(req.params.mouse_id)})
}

const updateMousesCon = async (req,res)=>{
    let {mouses_id, mouses_name, description, mouses_price, mouses_img_id}=req.body
    res.json({MousesPatch: await updateMouses(mouses_id, mouses_name, description, mouses_price, mouses_img_id)})
}

export {getMousesCon, insertMousesCon, deleteMousesCon, updateMousesCon}