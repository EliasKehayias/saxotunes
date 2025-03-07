
import {getMonitor, insertMonitor, deleteMonitor, updateMonitor} from '../model/monitorsModel.js';

const getMonitorsCon = async (req,res)=>{
    res.json({MonitorsGet: await getMonitor()})}

    const insertMonitorCon = async (req,res)=>{
        let {monitors_name, description, monitors_price, monitors_img_id}=req.body
        res.json({MonitorsPost: await insertMonitor(monitors_name, description, monitors_price, monitors_img_id)})}

    const deleteMonitorCon = async (req,res)=>{
        res.json({MonitorsDelete: await deleteMonitor(req.params.monitors_id)})}

    const updateMonitorCon = async (req,res)=>{
        let{monitors_id,monitors_name, description, monitors_price, monitors_img_id}=req.body
        res.json({MonitorsPatch: await updateMonitor(monitors_id,monitors_name, description, monitors_price, monitors_img_id)})}

export {getMonitorsCon, insertMonitorCon, deleteMonitorCon, updateMonitorCon}

