--[[print(type("Hello World"));
print(type(10.4*3));
print(type(print));
print(type(true));
print(type(nil));
print(type(type("a")));
--]]
---比尔呢修稿了
-- print(type(a));
-- a=10;
-- print(type(a));
-- a="a string!!"
-- print(type(a));


-- a=print;  --a为一个函数
-- a("name")

-- a="one string"  --替换
-- b=string.gsub(a,"one","another")
-- print(a,b)

-- print("10"+1)
-- print("10+1")
-- print("10"+"1")
-- -- print("hello"+1)
-- print("Hello".."World")--..链接字符串
-- print("10"..20)
-- print(10 ..20)


-- a=20
-- print(tonumber(a))--装换为number不成功为nil

-- m="aa"
-- if tostring(m) then
--         print("Success")
-- else 
--         print("fail")
--         local a = 19  --局部变量  在外面是不能打印的
-- end
-- print(a)

--lua 表达式
-- print(4 and false)   --如果a为false返回a 否则返回b
-- print(nil and 13)
-- print(false and 13)
-- print(4 or 5)
-- print(false or 5)
-- print((4 and false) or 4)



-- a,b,c,d=20,30,50 --此时abcd都是全局变量
-- print(a,b,c,d,e)
--  a,b=b,a  --交换数据
--  print(a,b)

-- for i=1,100 ,10 do  --从1到100 循环 10表示梯度i+10
--         print(i)
-- end

-- local m = 1
-- while true do
--         m=m+1
--         print(m)
--         if m==50 then
--         break
--         end
-- end

-- function max( a,b ) --函数
--         if a>b then 
--         return a
--         else
--         return b,a
--         end
-- end
-- print(max(5,10)) --调用max函数

-- function test()
--         return 10,20,30 --lua 可以返回多个值
-- end
 
-- a,b,c=test(),50  --如果调用函数在中间或者前面都只能返回一个值,放在末尾可以返回多个值（补齐作用）
-- print(a,b,c) 

-- function a( ... )
--      function b( ... )
--              print("B called")
--      end
--      b()
-- end

-- a()   --在函数外面如果函数嵌套函数 要先调用外面的函数才能调用里面的函数
-- b()

--days={"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"}
-- print(days[5])  --lua数组是从1开始的

--config={name="zhangsan",age=20,"Wednesday","Saturday","Friday"}  --建值对
-- print(config.name)[2]=
-- print(config.name)
-- print(config["name"])

-- config.sex="boy"   --添加一个键值对
-- config["sex"]="boy"

-- for k,v in pairs(config) do  --ipairs是连续（按下标）的遍历数组中的元素不能遍历字典
--         print(k,v)          --pairs是遍历字典和数组所有的内容
-- end

-- arr={}
-- for var=1,100 do
--         table.insert(arr,1,var) --每次从1这个位置插入数据
-- end
-- print(#arr)  --打印表的长度
-- print(table.maxn(arr))  --打印最大值
-- for i=1,100 do
--         print(arr[i])
-- end


-- function count()--闭合函数
-- 	local i = 1
-- 	return function ()
-- 	    i=i+1;
-- 		return i;
-- 	end
-- end

-- local fun = count();
-- print(fun())
-- print(fun())
-- print(fun())


-- i=10;j="10";k="+10"
-- a={}
-- a[i]="one value"
-- a[j]="another value"
-- a[k]="yet another value"
-- print(a[j])
-- print(a[k])
-- print(a[i])
-- print(a[tonumber(i)])
-- print(a[tonumber(j)])
-- print(a[tonumber(k)])


-- a={1,2,3,1000}
-- --a[10000]=1
-- print(table.maxn(a))--最大的索引

-- local eat;  --
-- local drink;--有点像前向声名
-- eat =function()
-- print("eat")
-- return drink();
-- end
-- drink=function()
-- print("drink")
-- end

-- print(eat())



-- local function test()
-- 	local test
-- 	test=function()

--  local drink  --尾掉式
--  local function eat()
--         print("eat");
--         return drink()+1
--     end
--         drink=function()
--         return 10;
-- end


--  for i=1,100000 do
--   	eat()
--   end


-- function dieDaiQi(t)
-- 	local i=0
-- 	return function()
-- 	i=i+1
-- 	return t[i]
-- 	end
-- end
-- local t={"a","b","c","d"}
-- local iter=dieDaiQi(t)
-- while true do
-- 	local value=iter()
-- 	if value==nil then
-- 		break;
-- 	end
-- 	print(value)
-- 	end



-- 		end
-- 		end
-- 		return i,t[i];
-- 		return nil;
-- 	end
-- 	i=i+1
-- 	if i>#t then
-- 	local i=0
-- 	return function()
-- function dieDaiQi(t)


-- local t={"fdsd","445"}
-- for value,v in dieDaiQi(t) do
-- 	print(value,v);
-- end;


-- local name = "zhangsan1"   --出错i
-- -- error("出错了")
-- if name~="zhangsan" then
-- 	error("I want to find zhangsan")
-- end

-- local name = "张三"
-- local  result = assert(name=="张三","你不是张三,我要找的人是张三")  --成功返回ture
-- print(result);

function test(  )
	print(a[1])
end

local  statues,err= pcall(test)
if statues then
	print("正常，呵呵")
   else  --捕获错误代码——pcall	
	print("函数出错了，我正在帮你处理")
	print(err)
	
end
-- function test( )
-- 	print(a[1])
-- end
-- if pcall(test) then
-- 	print("正常")
-- 	else
-- 		print("函数出错了，我正在帮你处理")
-- 		print(error())
-- end





--table的深拷贝
--如何计算一个table的长度



-- w={x=0,y=0,label="console"}
-- x={math.sin(0),math.sin(1),math.sin(2)}
-- w[1]="another field" --向表里面添加数组  
-- x.f=w  
-- print(w.x)
-- print(w[1])
-- print(x.f[1])
-- for k,v in ipairs(w) do
-- 	print(k,v)
-- end

-- --w.x=nil


-- polyLine={color="blue",thickness=2,npoints=4,
--         {x=0,y=0},
--         {x=-10,y=0},
--         {x=-10,y=1},
--         {x=0,y=1}
--         }
-- print(polyLine[2].x)
-- print(polyLine[4].y)????

-- for i=10 ,1,-1 do
-- 	print(1)
-- end

-- local mt= {}
-- mt.__add=function(s1,s2)--元方法
-- local result = ""
--    if s1.sex=="boy" and s2.sex=="girl" then
-- 	result="完美的家庭"
--    elseif s1.sex=="girl" and s2.sex=="girl" then
--    result="不好"
--    else
--    	result="不好"
--   end
--    return result
-- end



--    local s1 = { name="Hello",sex="boy"}
--    local s2 = {name="good",sex="girl"}
--    setmetatable(s1, mt)
--    setmetatable(s2, mt)
--    local  result = s1+s2
--    print(result) 

local t = { name="hehe"}
print(t.money)
local t = { name="hehe"}
local mt = {
	__index=function(table,key)
	print("虽然你调用了不存在的字段，不过没关系" .. key);
end
}
setmetatable(t, mt);
print(t.money)



