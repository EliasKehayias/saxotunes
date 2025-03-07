import {pool} from "../config/config.js";

const getLaptops= async () =>{
    let [data]=await pool.query("SELECT laptops.laptop_image_id,laptop_name,Description,feature_1,feature_2,feature_3,feature_4,feature_5,price,laptop_image_link FROM laptops INNER JOIN laptop_images ON laptops.laptop_image_id = laptop_images.laptop_image_id;");
    return data;
}

const insertlaptops= async (laptop_name,Description,feature_1,feature_2,feature_3,feature_4,feature_5,price,laptop_image_id) => {
    let [data]=await pool.query("INSERT INTO laptops (laptop_name,Description,feature_1,feature_2,feature_3,feature_4,feature_5,price,laptop_image_id) VALUES (?,?,?,?,?,?,?,?,?);",[laptop_name,Description,feature_1,feature_2,feature_3,feature_4,feature_5,price,laptop_image_id]);
    return data;
}

const updatelaptops = async (laptops_id,laptop_name,Description,feature_1,feature_2,feature_3,feature_4,feature_5,price,laptop_image_id) =>{
    let [data]=await pool.query("UPDATE laptops SET laptop_name=?,Description=?,feature_1=?,feature_2=?,feature_3=?,feature_4=?,feature_5=?,price=?,laptop_image_id=? WHERE laptops_id=?;",[laptop_name,Description,feature_1,feature_2,feature_3,feature_4,feature_5,price,laptop_image_id,laptops_id]);
    return data;
}

const deletelaptops = async (laptops_id) =>{
    let [data]=await pool.query("DELETE FROM laptops WHERE laptops_id=?;",[laptops_id]);
    return data;
}

export {getLaptops,insertlaptops,updatelaptops,deletelaptops}