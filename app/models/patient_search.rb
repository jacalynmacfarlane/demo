class PatientSearch < ActiveRecord::Base
  self.table_name = "patient_searches"
  def patients
    @patients ||= find_patients
  end

private

  def find_patients
    patients = Patient.order(:id)
    patients = patients.where(drc_id: drc_id) if drc_id.present?
    patients = patients.where(first_initial: first_initial) if first_initial.present?
    patients = patients.where(last_initial: last_initial) if last_initial.present?
    patients
  end

end
