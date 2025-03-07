import { getKeyboard, insertKeyboard, deleteKeyboard, updateKeyboard } from '../model/keyboardModel.js ';
const getKeyboardCon = async (req,res)=>{
    res.json({KeyboardGet:await getKeyboard()})}

const insertKeyboardCon = async (req,res)=>{
    let { keyboards_name, description, keyboard_rice, keyboard_img_id}=req.body
    res.json({KeyboardPost:await insertKeyboard( keyboards_name, description, keyboard_rice, keyboard_img_id)})

}
const updateKeyboardCon = async (req, res)=>{
let {keyboards_id, keyboards_name, description, keyboard_rice, keyboard_img_id}=req.body
    res.json({KeyboardPatch:await updateKeyboard(keyboards_id, keyboards_name, description, keyboard_rice, keyboard_img_id)})
}
const deleteKeyboardCon= async (req, res) => {
    res.json({KeyboardDelete:await deleteKeyboard(req.params.keyboards_id)})
}
    export {getKeyboardCon,insertKeyboardCon,updateKeyboardCon,deleteKeyboardCon}