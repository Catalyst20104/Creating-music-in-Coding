use_bpm 84

in_thread do
  live_loop :pedall do
    with_fx :lpf, cutoff: 60 do
      use_synth :saw
      use_synth_defaults release: 0.8
      play_pattern_timed [:c7,:e2,:g2,:b9,:c4,:b3,:g3,:e3],[0.25]
    end
  end
end

in_thread do
  use_bpm 84
  live_loop :pedall do
    with_fx :lpf, cutoff: 50 do
      use_synth :prophet
      use_synth_defaults release: 1.2
      play_pattern_timed [:c3,:e8,:g8,:b3,:c4,:b3,:g3,:e7],[0.25]
    end
  end
end

