#/etc/puppet/manifests/classes/demofiles/demodockmcx.pp
# Class: demodockmcx
#
#
class demodockmcx {
	# resources
	
	mcx { '/Users/management':
	    ensure => 'present',
	    content => '
			<?xml version="1.0" encoding="UTF-8"?>
			<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
			<plist version="1.0">
			<dict>
				<key>com.apple.dock</key>
				<dict>
					<key>AppItems-Raw</key>
					<dict>
						<key>state</key>
						<string>once</string>
						<key>upk</key>
						<dict>
							<key>mcx_input_key_names</key>
							<array>
								<string>AppItems-Raw</string>
							</array>
							<key>mcx_output_key_name</key>
							<string>persistent-apps</string>
							<key>mcx_remove_duplicates</key>
							<true/>
							<key>mcx_replace</key>
							<true/>
						</dict>
						<key>value</key>
						<array>
							<dict>
								<key>mcx_typehint</key>
								<integer>1</integer>
								<key>tile-data</key>
								<dict>
									<key>file-data</key>
									<dict>
										<key>_CFURLString</key>
										<string>/Applications/Safari.app</string>
										<key>_CFURLStringType</key>
										<integer>0</integer>
									</dict>
									<key>file-label</key>
									<string>Safari</string>
								</dict>
								<key>tile-type</key>
								<string>file-tile</string>
							</dict>
							<dict>
								<key>mcx_typehint</key>
								<integer>1</integer>
								<key>tile-data</key>
								<dict>
									<key>file-data</key>
									<dict>
										<key>_CFURLString</key>
										<string>/Applications/System Preferences.app</string>
										<key>_CFURLStringType</key>
										<integer>0</integer>
									</dict>
									<key>file-label</key>
									<string>System Preferences</string>
								</dict>
								<key>tile-type</key>
								<string>file-tile</string>
							</dict>
							<dict>
								<key>mcx_typehint</key>
								<integer>1</integer>
								<key>tile-data</key>
								<dict>
									<key>file-data</key>
									<dict>
										<key>_CFURLString</key>
										<string>/Applications/Server/Server Admin.app</string>
										<key>_CFURLStringType</key>
										<integer>0</integer>
									</dict>
									<key>file-label</key>
									<string>Server Admin</string>
								</dict>
								<key>tile-type</key>
								<string>file-tile</string>
							</dict>
							<dict>
								<key>mcx_typehint</key>
								<integer>1</integer>
								<key>tile-data</key>
								<dict>
									<key>file-data</key>
									<dict>
										<key>_CFURLString</key>
										<string>/Applications/Server/Workgroup Manager.app</string>
										<key>_CFURLStringType</key>
										<integer>0</integer>
									</dict>
									<key>file-label</key>
									<string>Workgroup Manager</string>
								</dict>
								<key>tile-type</key>
								<string>file-tile</string>
							</dict>
							<dict>
								<key>mcx_typehint</key>
								<integer>1</integer>
								<key>tile-data</key>
								<dict>
									<key>file-data</key>
									<dict>
										<key>_CFURLString</key>
										<string>/System/Library/CoreServices/Screen Sharing.app</string>
										<key>_CFURLStringType</key>
										<integer>0</integer>
									</dict>
									<key>file-label</key>
									<string>Screen Sharing</string>
								</dict>
								<key>tile-type</key>
								<string>file-tile</string>
							</dict>
							<dict>
								<key>mcx_typehint</key>
								<integer>1</integer>
								<key>tile-data</key>
								<dict>
									<key>file-data</key>
									<dict>
										<key>_CFURLString</key>
										<string>/Applications/TextMate.app</string>
										<key>_CFURLStringType</key>
										<integer>0</integer>
									</dict>
									<key>file-label</key>
									<string>TextMate</string>
								</dict>
								<key>tile-type</key>
								<string>file-tile</string>
							</dict>
							<dict>
								<key>mcx_typehint</key>
								<integer>1</integer>
								<key>tile-data</key>
								<dict>
									<key>file-data</key>
									<dict>
										<key>_CFURLString</key>
										<string>/Applications/Utilities/Activity Monitor.app</string>
										<key>_CFURLStringType</key>
										<integer>0</integer>
									</dict>
									<key>file-label</key>
									<string>Activity Monitor</string>
								</dict>
								<key>tile-type</key>
								<string>file-tile</string>
							</dict>
							<dict>
								<key>mcx_typehint</key>
								<integer>1</integer>
								<key>tile-data</key>
								<dict>
									<key>file-data</key>
									<dict>
										<key>_CFURLString</key>
										<string>/Applications/Utilities/Terminal.app</string>
										<key>_CFURLStringType</key>
										<integer>0</integer>
									</dict>
									<key>file-label</key>
									<string>Terminal</string>
								</dict>
								<key>tile-type</key>
								<string>file-tile</string>
							</dict>
							<dict>
								<key>mcx_typehint</key>
								<integer>1</integer>
								<key>tile-data</key>
								<dict>
									<key>file-data</key>
									<dict>
										<key>_CFURLString</key>
										<string>/Applications/Pacifist/Pacifist.app</string>
										<key>_CFURLStringType</key>
										<integer>0</integer>
									</dict>
									<key>file-label</key>
									<string>Pacifist</string>
								</dict>
								<key>tile-type</key>
								<string>file-tile</string>
							</dict>
						</array>
					</dict>
					<key>DocItems-Raw</key>
					<dict>
						<key>state</key>
						<string>once</string>
						<key>upk</key>
						<dict>
							<key>mcx_input_key_names</key>
							<array>
								<string>DocItems-Raw</string>
							</array>
							<key>mcx_output_key_name</key>
							<string>persistent-others</string>
							<key>mcx_remove_duplicates</key>
							<true/>
							<key>mcx_replace</key>
							<true/>
						</dict>
						<key>value</key>
						<array/>
					</dict>
					<key>MCXDockSpecialFolders-Raw</key>
					<dict>
						<key>state</key>
						<string>once</string>
						<key>upk</key>
						<dict>
							<key>mcx_input_key_names</key>
							<array>
								<string>MCXDockSpecialFolders-Raw</string>
							</array>
							<key>mcx_output_key_name</key>
							<string>MCXDockSpecialFolders</string>
							<key>mcx_remove_duplicates</key>
							<true/>
						</dict>
						<key>value</key>
						<array/>
					</dict>
					<key>autohide</key>
					<dict>
						<key>state</key>
						<string>once</string>
						<key>value</key>
						<false/>
					</dict>
					<key>autohide-immutable</key>
					<dict>
						<key>state</key>
						<string>unset</string>
						<key>value</key>
						<false/>
					</dict>
					<key>contents-immutable</key>
					<dict>
						<key>state</key>
						<string>unset</string>
						<key>value</key>
						<false/>
					</dict>
					<key>largesize</key>
					<dict>
						<key>state</key>
						<string>once</string>
						<key>value</key>
						<real>128</real>
					</dict>
					<key>launchanim</key>
					<dict>
						<key>state</key>
						<string>once</string>
						<key>value</key>
						<true/>
					</dict>
					<key>launchanim-immutable</key>
					<dict>
						<key>state</key>
						<string>unset</string>
						<key>value</key>
						<false/>
					</dict>
					<key>magnification</key>
					<dict>
						<key>state</key>
						<string>once</string>
						<key>value</key>
						<false/>
					</dict>
					<key>magnify-immutable</key>
					<dict>
						<key>state</key>
						<string>unset</string>
						<key>value</key>
						<false/>
					</dict>
					<key>magsize-immutable</key>
					<dict>
						<key>state</key>
						<string>unset</string>
						<key>value</key>
						<false/>
					</dict>
					<key>mineffect</key>
					<dict>
						<key>state</key>
						<string>once</string>
						<key>value</key>
						<string>genie</string>
					</dict>
					<key>mineffect-immutable</key>
					<dict>
						<key>state</key>
						<string>unset</string>
						<key>value</key>
						<false/>
					</dict>
					<key>orientation</key>
					<dict>
						<key>state</key>
						<string>once</string>
						<key>value</key>
						<string>bottom</string>
					</dict>
					<key>position-immutable</key>
					<dict>
						<key>state</key>
						<string>unset</string>
						<key>value</key>
						<false/>
					</dict>
					<key>size-immutable</key>
					<dict>
						<key>state</key>
						<string>unset</string>
						<key>value</key>
						<false/>
					</dict>
					<key>static-only</key>
					<dict>
						<key>state</key>
						<string>unset</string>
						<key>value</key>
						<false/>
					</dict>
					<key>tilesize</key>
					<dict>
						<key>state</key>
						<string>once</string>
						<key>value</key>
						<real>64</real>
					</dict>
				</dict>
			</dict>
			</plist>
			',
	}
}