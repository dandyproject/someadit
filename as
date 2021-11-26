                            case '!bug report':
                            const bug = body.slice(12)
                            if(!bug) return
                            if(isGroupMsg){
                                client.sendText(ownerNumber, `*[BUG REPORT]*\nNO PENGIRIM : wa.me/${serial.match(/\d+/g)}\nGroup : ${formattedTitle}\n\n${bug}`)
                                reply('Masalah telah di laporkan ke owner BOT, laporan palsu/main2 tidak akan ditanggapi.')
                            }else{
                                client.sendText(ownerNumber, `*[BUG REPORT]*\nNO PENGIRIM : wa.me/${serial.match(/\d+/g)}\n\n${bug}`)
                            reply('Masalah telah di laporkan ke owner BOT, laporan palsu/main2 tidak akan ditanggapi.')
                        }
                        break
                          case '!unblock':
                        if(!isOwner) return
                        if(args.length >= 3){
                            let unblock = `${args[2]}@c.us`
                            await client.contactUnblock(unblock).then(()=>{
                                reply(`Sukses unblok ${args[2]}!`)
                        })
                        }
                        break
					   case '!block':
                        if(!isOwner) return
                        if(args.length >= 3){
                            let block = `${args[2]}@c.us`
                            await client.contactBlock(block).then(() => {
                                reply(`Sukses blok ${args[2]}!`)
                            })
                            return
                        }
                    }
