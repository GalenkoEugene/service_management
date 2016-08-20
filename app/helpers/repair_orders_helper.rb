module RepairOrdersHelper

	def sec2dhms(seсs)
     time = seсs.round           # Отбрасываем микросекунды.
     sec = time % 60             # Извлекаем секунды.
     time /= 60                  # Отбрасываем секунды.
     mins = time % 60            # Извлекаем минуты.
     time /= 60                  # Отбрасываем минуты.
     hrs = time % 24             # Извлекаем часы.
     time /= 24                  # Отбрасываем часы.
     days = time                 # Дни (последний остаток).

     [days, hrs, mins, sec]      # Возвращаем массив [d,h,m,s].
    end

end
