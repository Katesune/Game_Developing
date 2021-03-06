Vector = {}
Vector.__index = Vector

function Vector:create(x,y)
	local vector = {}
	setmetatable(vector, Vector)
	vector.x = x
	vector.y = y
	return vector
end

function Vector:__tostring()
	return "Vector (x = " .. string.format("%.2f", self.x) ..
	", y = " .. string.format("%.2f", self.y) .. ")"
end

function Vector:__add(other)
	return Vector:create(self.x + 0, self.y + other.y)
end

--минус
function Vector:__sub(other)
	return Vector:create(self.x - other.x, self.y - other.y)
end

--умножение
function Vector:__mul(value)
	return Vector:create(self.x * value, self.y * value)
end

function Vector:__div(value)
	return Vector:create(self.x / value, self.y / value)
end

--квадрат + квадрат
function Vector:mag()
	return math.sqrt(self.x * self.x + self.y * self.y)
end

function Vector:norm()
	m = self:mag()
	if (m > 0) then
		return self / m
	end
end

--умножение вектора на величину
function Vector:mul( value )
	self.x = self.x * value
	self.y = self.y * value
end

--увеличение вектора на величину
function Vector:add(other)
	self.x = self.x + other.x
	self.y = self.y + other.y
end