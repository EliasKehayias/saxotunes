import {getLaptops,insertlaptops,updatelaptops,deletelaptops} from '../model/laptopModel.js';

const getLaptopsCon = async (req,res)=>{
    res.json({LaptopsGet:await getLaptops()})}

const insertlaptopsCon = async (req,res)=>{
    let {laptop_name,Description,feature_1,feature_2,feature_3,feature_4,feature_5,price,laptop_image_id}=req.body
    res.json({LaptopsPost:await insertlaptops(laptop_name,Description,feature_1,feature_2,feature_3,feature_4,feature_5,price,laptop_image_id)})

}
const updatelaptopsCon = async (req, res)=>{
let {laptops_id,laptop_name,Description,feature_1,feature_2,feature_3,feature_4,feature_5,price,laptop_image_id}=req.body
    res.json({LaptopsPatch:await updatelaptops(laptops_id,laptop_name,Description,feature_1,feature_2,feature_3,feature_4,feature_5,price,laptop_image_id)})
}
const deletelaptopsCon= async (req, res) => {
    res.json({LaptopsDelete:await deletelaptops(req.params.laptops_id,)})
}


    export {getLaptopsCon,insertlaptopsCon,updatelaptopsCon,deletelaptopsCon}