class QuestList
  attr_reader :quest_list

  def initialize(quest_list)
    @quest_list = quest_list
    @index = 0
  end

  def has_next?
    @index < quest_list.length
  end

  def next_quest
    quest = quest_list[@index]
    @index += 1
    quest
  end

  def first
    quest_list[0]
  end

  def invite_person(person)
    quest_list << person
  end
end
