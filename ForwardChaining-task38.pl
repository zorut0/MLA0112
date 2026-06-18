symptom(fever, flu).
symptom(cough, flu).
symptom(headache, migraine).
symptom(nausea, migraine).

diagnose(Symptom, Disease) :- symptom(Symptom, Disease).
