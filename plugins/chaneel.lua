do 
local function run(msg, matches)
local bot_id = our_id 
local receiver = get_receiver(msg)
    if matches[1] == 'kickbot' and is_admin1(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
     leave_channel(receiver, ok_cb, false)
    elseif msg.service and msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_admin1(msg) then
       send_large_msg(receiver, 'ياعزيزي يافيطي لايمكنك انا تدخني هنا الى شخص واحد فقط هو @hlusat \n @G0vip : @f4f4f4bot', ok_cb, false)
       chat_del_user(receiver, 'user#id'..bot_id, ok_cb, false)
     leave_channel(receiver, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^/(kickbot)$",
    "^(kickbot)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
