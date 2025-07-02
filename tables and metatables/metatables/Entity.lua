local module = {}

function module:Create(health: number = 100, damage: number = 10, protection: number = 100, name: string = "Entity")
    local entity = {}
    entity.health = health
    entity.damage = damage
    entity.protection = protection
    entity.name = name
    entity.Alive = true
    entity.Block = false
    entity.Cooldown = false

    function entity:Summon(position: Vector3)
        print("wooo cool summoning function that summons entity at "..tostring(position))
    end

    function entity:Kill()
        print("ow the entity is ded")
        entity.Alive = false
        entity.health = 0
        entity.protection = 0
    end

    function entity:Walk(position: Vector3)
        print("move to "..tostring(position))
    end
    
    function entity:Attack(target)
        print("attack the target!!!")
        entity.Cooldown = true
        task.wait(0.5)
        entity.Cooldown = false
    end

    function entity:Block(target)
        print("lol im blocking you")
        entity.Block = true
        task.wait(2)
        entity.Block = false
    end

    return entity
end

return module