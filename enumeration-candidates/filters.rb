# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id, candidates)
  # 1st matching candidate
  # Takes in a single candidate (hash). Note: not the array.
  candidates.find { | candidate | candidate[:id] == id}
end

def experienced?(candidate)
  # Returns true if the candidate has 2 years of experience or more
  candidate[:years_of_experience] >= 2
end

def qualified_candidates(candidates)
  # Filter candidates based on the defined criteria
  candidates.select do |candidate|
    experienced?(candidate) &&
      github_points?(candidate) &&
      knows_ruby_or_python?(candidate) &&
      applied_in_last_15_days?(candidate) &&
      age_over_17?(candidate)
  end
end

def have_github_points?(candidate) 
  candidate[:github_points] >= 100
end

def know_ruby_or_python?(candidate)
  candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")
end

def applied_within_15_days?(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date
end

def age_over_17?(candidate)
  candidate[:age] >+ 18
end

def ordered_by_qualifications(candidates)
  # Order candidates by experience and then by Github points (highest first)
  candidates.sort_by do |candidate|
    [-candidate[:experience], -candidate[:github_points]]
  end
end