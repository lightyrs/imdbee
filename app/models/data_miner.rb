class DataMiner

  def self.roles
    {
      actor: 1,
      actress: 2,
      producer: 3,
      writer: 4,
      cinematographer: 5,
      composer: 6,
      costume_designer: 7,
      director: 8,
      editor: 9,
      miscellaneous_crew: 10,
      production_designer: 11,
      guest: 12
    }
  end

  def self.names(role, count = 1000)
    if roles[role]
      CastInfos
      .where(role_id: roles[role])
      .limit(count)
      .joins("LEFT OUTER JOIN name ON name.id = cast_info.person_id")
      .select("name.name AS person_name")
      .map(&:person_name).uniq
    else
      raise ArgumentError.new("#{role} is not a valid role.\n\nValid roles are #{roles.keys}\n\n")
    end
  end
end
