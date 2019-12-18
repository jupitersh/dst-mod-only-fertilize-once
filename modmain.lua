local function change_transplantfn (inst)
  if inst.components.pickable ~= nil then
    local old_transplantfn = inst.components.pickable.ontransplantfn
    inst.components.pickable.ontransplantfn = function (inst2)
      if old_transplantfn then
        old_transplantfn (inst2)
      end
      inst2.components.pickable.transplanted = false
    end
  end
end

AddPrefabPostInitAny(change_transplantfn)
