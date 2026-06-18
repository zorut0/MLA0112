diet(diabetes, 'Avoid sugar, eat whole grains').
diet(hypertension, 'Reduce salt, eat fruits').
diet(obesity, 'Low calorie, high protein').

suggest_diet(Disease, Advice) :- diet(Disease, Advice).
