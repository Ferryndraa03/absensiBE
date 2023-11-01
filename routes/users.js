const express = require('express')
const router = express.Router()
const UsersModel = require('../models/users')
const bycrypt = require('bcrypt')
const passwordCheck = require('../utils/passwordCheck')

//routing endpoint users utama
router.get('/', async(req, res) => {
    const users = await UsersModel.findAll()

    res.status(200).json({
        status : 200,
        data : users,
        metadata : "test user endpoint"
    })
})

router.post('/', async(req, res) => {
    
    const {nip, nama, password} = req.body
    
    const encryptedPassword = await bycrypt.hash(password, 10)

    const users = await UsersModel.create({
        nip, nama, password: encryptedPassword
    })

    res.status(200).json({
        status : 200,
        data : users,
        metadata : "test user post endpoint"
    })
})
router.put('/', async(req, res) => {
    
    const {nip, nama, password, passwordBaru} = req.body
  
    const check = await passwordCheck(nip, password)

    const encryptedPassword = await bycrypt.hash(passwordBaru, 10)

    // res.json({userData})
    if(check.compare === true){
        const users = await UsersModel.update({
            nama, password : encryptedPassword
        }, { where: { nip: nip }})    
        res.status(200).json({
            status : 200,
            users: {updated: users[0]},
            metadata: "User Updated!"
        })
    }else{
        res.status(400).json({
            "error": "data invalid"
        })
    }
 
})

router.post('/login', async(req, res) => {
    const {nip, password} = req.body

    const check = await passwordCheck(nip, password)
    
    if(check.compare === true){
        res
        .status(200)
        .json({
            status : 200,
            users : check.userData,
            metadata: "login success"
        })
    }else{
        res.status(400).json({
            error: "Data Invalid"
        })
    }
})



module.exports = router