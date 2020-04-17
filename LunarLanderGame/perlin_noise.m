function s = perlin_noise (m)

  s = zeros(1,m);     % Prepare output image (size: m x m)
  w = m;
  i = 0;
  while w > 3
    i = i + 1;
    d = interp1(randn([m]), i-1, 'spline');
    s = s + i * d(1:m);
    w = w - ceil(w/2 - 1);
  end
  s = (s - min(min(s(:)))) ./ (max(max(s(:))) - min(min(s(:))));
end