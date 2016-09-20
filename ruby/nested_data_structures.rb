gym = {
	gym_name: "Gym of Gyms",
	monthly_membership: 29.99,
	year_discount: 0.12,
	cardio_room: {
		machines: [
			"Upright Bike",
			"Recumbant Bike",
			"Rowing Machine",
			"Upper-Body Ergometer",
			"Treadmill",
			"Stairmaster",
			"Elliptical"
		],
		time_limit: 30,
		total_machine_count: 30
	},
	weight_room: {
		benches: {
			flat_bench: 5,
			incline_bench: 2,
			decline_bench: 1,
			squat_rack: 10
		},
		people: [
			"Grunty guy",
			"Stinky guy",
			"Makeup girl",
			"Perfume lady",
			"Only talks guy"
		
		],
		tvs: 8

	},
	locker_room: {
		showers: true,
		towels: false,
		stalls: 3
	},
	pool_area: {
		hot_tub: true,
		steam_room: true,
		sauna: true,
		pool: false
	}
}

p gym[:gym_name]
p gym[:gym_name].swapcase!
p gym[:gym_name]
p gym[:monthly_membership] * 12 * gym[:year_discount]

gym[:weight_room][:benches].each {|bench, number| puts "#{bench}: There are #{number}"}

gym[:weight_room][:tvs] = 7
p gym[:weight_room][:tvs]

gym[:pool_area].delete_if {|key, value| value == false}
p gym[:pool_area]

gym[:weight_room][:people].push "Pushy trainer girl"

gym.each {|key, value| puts "#{key}: #{value}\n__________\n"}
