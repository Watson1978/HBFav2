class UIDevice
  @@gt = {}

  def gt?(version)
    return @@gt[version] if not @@gt[version].nil?
    v = UIDevice.currentDevice.systemVersion
    if (v.compare(version, options:NSNumericSearch) == NSOrderedSame or
        v.compare(version, options:NSNumericSearch) == NSOrderedDescending)
      @@gt[version] = true
    else
      @@gt[version] = false
    end
    return @@gt[version]
  end
end
