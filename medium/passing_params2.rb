def passing_params(arr)
  yield(arr)
end

birds = ['raven','finch','hawk','eagle']

passing_params(birds) { |_, _, *raptors| p raptors }
