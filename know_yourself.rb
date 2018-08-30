require 'awesome_print'

quiz = [ "I am white.",
 "I have never been discriminated against because of my skin color.",
 "I have never been the only person of my race in a room.",
 "I have never been mocked for my accent.",
 "I have never been told I am attractive 'for my race.'",
 "I have never been a victim of violence because of my race.",
 "I have never been called a racial slur.",
 "I have never been told I 'sound white.'",
 "A stranger has never asked to touch my hair, or asked if it is real.",
 "I am heterosexual.",
 "My name is rarely mispronounced,",
 "I have never lied about my sexuality.",
 "I never had to 'come out.'",
 "I never doubted my parents’ acceptance of my sexuality.",
 "I have never been called a 'fag', 'dyke', 'fairy', or any other derogatory slur for homosexuals.",
 "I have never tried to hide my sexuality.",
 "I am always comfortable with P.D.A. with my partner in public.",
 "I have never pretended to be 'just friends' with my significant other.",
 "I have never been told I would “burn in hell” for my sexual orientation.",
 "I have never been ostracized by my religion for my sexual orientation.",
 "I have never been told that my sexuality is 'just a phase.'",
 "I have never been violently threatened because of my sexuality.",
 "I am a man.",
 "I feel comfortable in the gender I was identified as at birth.",
 "I still identify as the gender I was identified at birth.",
 "Others do not question my gender.",
 "Others use my correct pronouns with no difficulty.",
 "I have never tried to change my gender.",
 "I have never been denied an opportunity because of my gender.",
 "I make more money than my professional counterparts of a different gender.",
 "I have never felt unsafe because of my gender.",
 "I have never been catcalled.",
 "I have never been raped, sexually harassed or assaulted.",
 "I work in a salaried job.",
 "My family and I have never lived below the poverty line.",
 "I don’t have any student loans.",
 "I have never gone to bed hungry.",
 "I have never been homeless.",
 "My parents pay some, or all of my bills.",
 "I don’t rely on public transportation.",
 "I buy new clothes at least once a month.",
 "I have never done my taxes myself.",
 "If something happens where I require a Lawyer, I have someone to call.",
 "I've/my family had the same doctor since I was young.",
 "I have never felt poor.",
 "I have never had to worry about making rent.",
 "I have never worked as a waiter, barista, bartender, or salesperson.",
 "I have had one or multiple unpaid internships.",
 "I went to summer camp.",
 "I went to private school.",
 "I graduated high school.",
 "I went to an elite college.",
 "I graduated college.",
 "My parents paid (at least some of) my tuition.",
 "I had a car in high school.",
 "I’ve never had a roommate.",
 "I've always had cable.",
 "I have traveled internationally.",
 "I travel internationally at least once a year.",
 "I studied abroad.",
 "I’ve never skipped a meal to save money.",
 "I don’t know what 'Sallie Mae' is.",
 "I have frequent flier miles.",
 "My parents are heterosexual.",
 "My parents are both alive.",
 "My parents are still married.",
 "I do not have any physical disabilities.",
 "I do not have any social disabilities.",
 "I do not have any learning disabilities.",
 "I have never had an eating disorder.",
 "I have never been depressed.",
 "I have never considered suicide.",
 "I have never attempted suicide.",
 "I have never taken medication for my mental health.",
 "I can afford medication if/when I need it.",
 "I have never been told I’m overweight or 'too skinny.'",
 "I have never felt overweight or underweight or 'too skinny.'",
 "I have never been shamed for my body type.",
 "I consider myself to be physically attractive.",
 "I can afford a therapist.",
 "I’ve used prescription drugs recreationally.",
 "I have never had an addiction.",
 "I have never been shamed for my religious beliefs.",
 "I have never been violently threatened or attacked for my religious beliefs.",
 "There is a place of worship for my religion in my town.",
 "I have never lied about my religion as self-defense.",
 "I have never lied about my ethnicity as self-defense.",
 "All my jobs have been accommodating of my religious practices.",
  "I am not nervous in airport security lines.",
 "I have never heard this statement: 'You have been randomly selected for secondary passport control.'",
 "I have never been called a terrorist.",
 "Nobody has ever tried to 'save' me for my religious beliefs.",
 "I have never been cyber-bullied for any of my identities.",
 "I was not bullied as a child for any of my identities.",
 "I have never tried to distance myself from any of my identities.",
 "I have never been self-conscious about any of my identities.",
 "I have never questioned any of my identities.",
 "I feel privileged because of the identities I was born with.",
 "The internet is easily accessible from multiple sources,",
 "I have never been questioned of my presence at a store or other public location." ]

puts "Welcome! let's get to Know Yourself. The following will only be seen by you."
puts 'how many questions should you be asked today?'
user_inputs = gets.chomp
quiz_length = user_inputs[0].to_i
ARGV.clear
puts 'loading...'
puts 'Please consider each question, and answer (T) for True or (F) for False:'
sleep(1.0)
results_count = [0, 0, 0]
questions_summary = {answered_yes: [], answered_no: []}
quiz.shuffle.take(quiz_length).each do |question|
	puts question
	answer = gets.chomp
	if answer[0].downcase == 't'
    results_count[0] += 1
    questions_summary[:answered_yes] << question
  elsif answer[0].downcase == 'f'
    results_count[1] += 1
    questions_summary[:answered_no] << question
  else
		results_count[2] += 1
  end
end
sleep(1.5)
puts "Out of #{quiz_length} Questions, You answered #{results_count[0]} true and #{results_count[1]} false."
sleep(3.5)
puts "Questions answered TRUE represent privileges you hold; Hardships that you've not had to encounter before."
sleep(3.5)
puts 'Take a minute to note what came up for you'
sleep(10)
puts 'would you like a summary of your privileges?(yes or no)'
summary_request = gets.chomp
if summary_request == "yes"
 ap questions_summary
end
puts 'OK! close your laptop.'
puts 'Thank you for your time!'
