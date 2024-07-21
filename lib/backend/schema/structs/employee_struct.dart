// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class EmployeeStruct extends FFFirebaseStruct {
  EmployeeStruct({
    int? id,
    String? firstNameEn,
    String? secondNameEn,
    String? thirdNameEn,
    String? lastNameEn,
    String? firstNameAr,
    String? secondNameAr,
    String? thirdNameAr,
    String? lastNameAr,
    String? gender,
    String? birthDate,
    int? religionId,
    int? nationality,
    String? nationalID,
    String? residencyNumber,
    String? passportNumber,
    String? hiringDate,
    String? endOfProbationDate,
    String? maritalStatus,
    String? mobileNumber,
    String? phoneNumber,
    String? phoneExt,
    String? contractType,
    String? endOfContractDate,
    String? address,
    String? personalPic,
    int? countryId,
    int? stateId,
    int? cityId,
    int? otherNationality,
    int? designationId,
    int? sectionId,
    int? departmentId,
    int? companyId,
    int? userId,
    int? reportedTo,
    String? zkUserid,
    String? createdAt,
    String? updatedAt,
    String? status,
    String? deletedAt,
    String? basicSalary,
    int? numberOfChildren,
    String? bankNameAr,
    String? bankNameEn,
    String? branchAr,
    String? branchEn,
    String? bankCode,
    String? iban,
    String? branchCode,
    String? jobOfferDate,
    String? employmentNumber,
    String? personalEmail,
    String? area,
    String? streetBuildingNumber,
    int? shiftId,
    String? name,
    String? personalPicFullPath,
    String? checkin,
    String? tasksCount,
    String? taskEst,
    String? bankName,
    String? branch,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _firstNameEn = firstNameEn,
        _secondNameEn = secondNameEn,
        _thirdNameEn = thirdNameEn,
        _lastNameEn = lastNameEn,
        _firstNameAr = firstNameAr,
        _secondNameAr = secondNameAr,
        _thirdNameAr = thirdNameAr,
        _lastNameAr = lastNameAr,
        _gender = gender,
        _birthDate = birthDate,
        _religionId = religionId,
        _nationality = nationality,
        _nationalID = nationalID,
        _residencyNumber = residencyNumber,
        _passportNumber = passportNumber,
        _hiringDate = hiringDate,
        _endOfProbationDate = endOfProbationDate,
        _maritalStatus = maritalStatus,
        _mobileNumber = mobileNumber,
        _phoneNumber = phoneNumber,
        _phoneExt = phoneExt,
        _contractType = contractType,
        _endOfContractDate = endOfContractDate,
        _address = address,
        _personalPic = personalPic,
        _countryId = countryId,
        _stateId = stateId,
        _cityId = cityId,
        _otherNationality = otherNationality,
        _designationId = designationId,
        _sectionId = sectionId,
        _departmentId = departmentId,
        _companyId = companyId,
        _userId = userId,
        _reportedTo = reportedTo,
        _zkUserid = zkUserid,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _status = status,
        _deletedAt = deletedAt,
        _basicSalary = basicSalary,
        _numberOfChildren = numberOfChildren,
        _bankNameAr = bankNameAr,
        _bankNameEn = bankNameEn,
        _branchAr = branchAr,
        _branchEn = branchEn,
        _bankCode = bankCode,
        _iban = iban,
        _branchCode = branchCode,
        _jobOfferDate = jobOfferDate,
        _employmentNumber = employmentNumber,
        _personalEmail = personalEmail,
        _area = area,
        _streetBuildingNumber = streetBuildingNumber,
        _shiftId = shiftId,
        _name = name,
        _personalPicFullPath = personalPicFullPath,
        _checkin = checkin,
        _tasksCount = tasksCount,
        _taskEst = taskEst,
        _bankName = bankName,
        _branch = branch,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "first_name_en" field.
  String? _firstNameEn;
  String get firstNameEn => _firstNameEn ?? '';
  set firstNameEn(String? val) => _firstNameEn = val;

  bool hasFirstNameEn() => _firstNameEn != null;

  // "second_name_en" field.
  String? _secondNameEn;
  String get secondNameEn => _secondNameEn ?? '';
  set secondNameEn(String? val) => _secondNameEn = val;

  bool hasSecondNameEn() => _secondNameEn != null;

  // "third_name_en" field.
  String? _thirdNameEn;
  String get thirdNameEn => _thirdNameEn ?? '';
  set thirdNameEn(String? val) => _thirdNameEn = val;

  bool hasThirdNameEn() => _thirdNameEn != null;

  // "last_name_en" field.
  String? _lastNameEn;
  String get lastNameEn => _lastNameEn ?? '';
  set lastNameEn(String? val) => _lastNameEn = val;

  bool hasLastNameEn() => _lastNameEn != null;

  // "first_name_ar" field.
  String? _firstNameAr;
  String get firstNameAr => _firstNameAr ?? '';
  set firstNameAr(String? val) => _firstNameAr = val;

  bool hasFirstNameAr() => _firstNameAr != null;

  // "second_name_ar" field.
  String? _secondNameAr;
  String get secondNameAr => _secondNameAr ?? '';
  set secondNameAr(String? val) => _secondNameAr = val;

  bool hasSecondNameAr() => _secondNameAr != null;

  // "third_name_ar" field.
  String? _thirdNameAr;
  String get thirdNameAr => _thirdNameAr ?? '';
  set thirdNameAr(String? val) => _thirdNameAr = val;

  bool hasThirdNameAr() => _thirdNameAr != null;

  // "last_name_ar" field.
  String? _lastNameAr;
  String get lastNameAr => _lastNameAr ?? '';
  set lastNameAr(String? val) => _lastNameAr = val;

  bool hasLastNameAr() => _lastNameAr != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "birth_date" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  set birthDate(String? val) => _birthDate = val;

  bool hasBirthDate() => _birthDate != null;

  // "religion_id" field.
  int? _religionId;
  int get religionId => _religionId ?? 0;
  set religionId(int? val) => _religionId = val;

  void incrementReligionId(int amount) => religionId = religionId + amount;

  bool hasReligionId() => _religionId != null;

  // "nationality" field.
  int? _nationality;
  int get nationality => _nationality ?? 0;
  set nationality(int? val) => _nationality = val;

  void incrementNationality(int amount) => nationality = nationality + amount;

  bool hasNationality() => _nationality != null;

  // "national_ID" field.
  String? _nationalID;
  String get nationalID => _nationalID ?? '';
  set nationalID(String? val) => _nationalID = val;

  bool hasNationalID() => _nationalID != null;

  // "residency_number" field.
  String? _residencyNumber;
  String get residencyNumber => _residencyNumber ?? '';
  set residencyNumber(String? val) => _residencyNumber = val;

  bool hasResidencyNumber() => _residencyNumber != null;

  // "passport_number" field.
  String? _passportNumber;
  String get passportNumber => _passportNumber ?? '';
  set passportNumber(String? val) => _passportNumber = val;

  bool hasPassportNumber() => _passportNumber != null;

  // "hiring_date" field.
  String? _hiringDate;
  String get hiringDate => _hiringDate ?? '';
  set hiringDate(String? val) => _hiringDate = val;

  bool hasHiringDate() => _hiringDate != null;

  // "end_of_probation_date" field.
  String? _endOfProbationDate;
  String get endOfProbationDate => _endOfProbationDate ?? '';
  set endOfProbationDate(String? val) => _endOfProbationDate = val;

  bool hasEndOfProbationDate() => _endOfProbationDate != null;

  // "marital_status" field.
  String? _maritalStatus;
  String get maritalStatus => _maritalStatus ?? '';
  set maritalStatus(String? val) => _maritalStatus = val;

  bool hasMaritalStatus() => _maritalStatus != null;

  // "mobile_number" field.
  String? _mobileNumber;
  String get mobileNumber => _mobileNumber ?? '';
  set mobileNumber(String? val) => _mobileNumber = val;

  bool hasMobileNumber() => _mobileNumber != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "phone_ext" field.
  String? _phoneExt;
  String get phoneExt => _phoneExt ?? '';
  set phoneExt(String? val) => _phoneExt = val;

  bool hasPhoneExt() => _phoneExt != null;

  // "contract_type" field.
  String? _contractType;
  String get contractType => _contractType ?? '';
  set contractType(String? val) => _contractType = val;

  bool hasContractType() => _contractType != null;

  // "end_of_contract_date" field.
  String? _endOfContractDate;
  String get endOfContractDate => _endOfContractDate ?? '';
  set endOfContractDate(String? val) => _endOfContractDate = val;

  bool hasEndOfContractDate() => _endOfContractDate != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "personal_pic" field.
  String? _personalPic;
  String get personalPic => _personalPic ?? '';
  set personalPic(String? val) => _personalPic = val;

  bool hasPersonalPic() => _personalPic != null;

  // "country_id" field.
  int? _countryId;
  int get countryId => _countryId ?? 0;
  set countryId(int? val) => _countryId = val;

  void incrementCountryId(int amount) => countryId = countryId + amount;

  bool hasCountryId() => _countryId != null;

  // "state_id" field.
  int? _stateId;
  int get stateId => _stateId ?? 0;
  set stateId(int? val) => _stateId = val;

  void incrementStateId(int amount) => stateId = stateId + amount;

  bool hasStateId() => _stateId != null;

  // "city_id" field.
  int? _cityId;
  int get cityId => _cityId ?? 0;
  set cityId(int? val) => _cityId = val;

  void incrementCityId(int amount) => cityId = cityId + amount;

  bool hasCityId() => _cityId != null;

  // "other_nationality" field.
  int? _otherNationality;
  int get otherNationality => _otherNationality ?? 0;
  set otherNationality(int? val) => _otherNationality = val;

  void incrementOtherNationality(int amount) =>
      otherNationality = otherNationality + amount;

  bool hasOtherNationality() => _otherNationality != null;

  // "designation_id" field.
  int? _designationId;
  int get designationId => _designationId ?? 0;
  set designationId(int? val) => _designationId = val;

  void incrementDesignationId(int amount) =>
      designationId = designationId + amount;

  bool hasDesignationId() => _designationId != null;

  // "section_id" field.
  int? _sectionId;
  int get sectionId => _sectionId ?? 0;
  set sectionId(int? val) => _sectionId = val;

  void incrementSectionId(int amount) => sectionId = sectionId + amount;

  bool hasSectionId() => _sectionId != null;

  // "department_id" field.
  int? _departmentId;
  int get departmentId => _departmentId ?? 0;
  set departmentId(int? val) => _departmentId = val;

  void incrementDepartmentId(int amount) =>
      departmentId = departmentId + amount;

  bool hasDepartmentId() => _departmentId != null;

  // "company_id" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;

  void incrementCompanyId(int amount) => companyId = companyId + amount;

  bool hasCompanyId() => _companyId != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "reported_to" field.
  int? _reportedTo;
  int get reportedTo => _reportedTo ?? 0;
  set reportedTo(int? val) => _reportedTo = val;

  void incrementReportedTo(int amount) => reportedTo = reportedTo + amount;

  bool hasReportedTo() => _reportedTo != null;

  // "zk_userid" field.
  String? _zkUserid;
  String get zkUserid => _zkUserid ?? '';
  set zkUserid(String? val) => _zkUserid = val;

  bool hasZkUserid() => _zkUserid != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "deleted_at" field.
  String? _deletedAt;
  String get deletedAt => _deletedAt ?? '';
  set deletedAt(String? val) => _deletedAt = val;

  bool hasDeletedAt() => _deletedAt != null;

  // "basic_salary" field.
  String? _basicSalary;
  String get basicSalary => _basicSalary ?? '';
  set basicSalary(String? val) => _basicSalary = val;

  bool hasBasicSalary() => _basicSalary != null;

  // "number_of_children" field.
  int? _numberOfChildren;
  int get numberOfChildren => _numberOfChildren ?? 0;
  set numberOfChildren(int? val) => _numberOfChildren = val;

  void incrementNumberOfChildren(int amount) =>
      numberOfChildren = numberOfChildren + amount;

  bool hasNumberOfChildren() => _numberOfChildren != null;

  // "bank_name_ar" field.
  String? _bankNameAr;
  String get bankNameAr => _bankNameAr ?? '';
  set bankNameAr(String? val) => _bankNameAr = val;

  bool hasBankNameAr() => _bankNameAr != null;

  // "bank_name_en" field.
  String? _bankNameEn;
  String get bankNameEn => _bankNameEn ?? '';
  set bankNameEn(String? val) => _bankNameEn = val;

  bool hasBankNameEn() => _bankNameEn != null;

  // "branch_ar" field.
  String? _branchAr;
  String get branchAr => _branchAr ?? '';
  set branchAr(String? val) => _branchAr = val;

  bool hasBranchAr() => _branchAr != null;

  // "branch_en" field.
  String? _branchEn;
  String get branchEn => _branchEn ?? '';
  set branchEn(String? val) => _branchEn = val;

  bool hasBranchEn() => _branchEn != null;

  // "bank_code" field.
  String? _bankCode;
  String get bankCode => _bankCode ?? '';
  set bankCode(String? val) => _bankCode = val;

  bool hasBankCode() => _bankCode != null;

  // "IBAN" field.
  String? _iban;
  String get iban => _iban ?? '';
  set iban(String? val) => _iban = val;

  bool hasIban() => _iban != null;

  // "branch_code" field.
  String? _branchCode;
  String get branchCode => _branchCode ?? '';
  set branchCode(String? val) => _branchCode = val;

  bool hasBranchCode() => _branchCode != null;

  // "job_offer_date" field.
  String? _jobOfferDate;
  String get jobOfferDate => _jobOfferDate ?? '';
  set jobOfferDate(String? val) => _jobOfferDate = val;

  bool hasJobOfferDate() => _jobOfferDate != null;

  // "employment_number" field.
  String? _employmentNumber;
  String get employmentNumber => _employmentNumber ?? '';
  set employmentNumber(String? val) => _employmentNumber = val;

  bool hasEmploymentNumber() => _employmentNumber != null;

  // "personal_email" field.
  String? _personalEmail;
  String get personalEmail => _personalEmail ?? '';
  set personalEmail(String? val) => _personalEmail = val;

  bool hasPersonalEmail() => _personalEmail != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  set area(String? val) => _area = val;

  bool hasArea() => _area != null;

  // "street_building_number" field.
  String? _streetBuildingNumber;
  String get streetBuildingNumber => _streetBuildingNumber ?? '';
  set streetBuildingNumber(String? val) => _streetBuildingNumber = val;

  bool hasStreetBuildingNumber() => _streetBuildingNumber != null;

  // "shift_id" field.
  int? _shiftId;
  int get shiftId => _shiftId ?? 0;
  set shiftId(int? val) => _shiftId = val;

  void incrementShiftId(int amount) => shiftId = shiftId + amount;

  bool hasShiftId() => _shiftId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "personal_pic_full_path" field.
  String? _personalPicFullPath;
  String get personalPicFullPath => _personalPicFullPath ?? '';
  set personalPicFullPath(String? val) => _personalPicFullPath = val;

  bool hasPersonalPicFullPath() => _personalPicFullPath != null;

  // "checkin" field.
  String? _checkin;
  String get checkin => _checkin ?? '';
  set checkin(String? val) => _checkin = val;

  bool hasCheckin() => _checkin != null;

  // "tasks_count" field.
  String? _tasksCount;
  String get tasksCount => _tasksCount ?? '';
  set tasksCount(String? val) => _tasksCount = val;

  bool hasTasksCount() => _tasksCount != null;

  // "task_est" field.
  String? _taskEst;
  String get taskEst => _taskEst ?? '';
  set taskEst(String? val) => _taskEst = val;

  bool hasTaskEst() => _taskEst != null;

  // "bank_name" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  set bankName(String? val) => _bankName = val;

  bool hasBankName() => _bankName != null;

  // "branch" field.
  String? _branch;
  String get branch => _branch ?? '';
  set branch(String? val) => _branch = val;

  bool hasBranch() => _branch != null;

  static EmployeeStruct fromMap(Map<String, dynamic> data) => EmployeeStruct(
        id: castToType<int>(data['id']),
        firstNameEn: data['first_name_en'] as String?,
        secondNameEn: data['second_name_en'] as String?,
        thirdNameEn: data['third_name_en'] as String?,
        lastNameEn: data['last_name_en'] as String?,
        firstNameAr: data['first_name_ar'] as String?,
        secondNameAr: data['second_name_ar'] as String?,
        thirdNameAr: data['third_name_ar'] as String?,
        lastNameAr: data['last_name_ar'] as String?,
        gender: data['gender'] as String?,
        birthDate: data['birth_date'] as String?,
        religionId: castToType<int>(data['religion_id']),
        nationality: castToType<int>(data['nationality']),
        nationalID: data['national_ID'] as String?,
        residencyNumber: data['residency_number'] as String?,
        passportNumber: data['passport_number'] as String?,
        hiringDate: data['hiring_date'] as String?,
        endOfProbationDate: data['end_of_probation_date'] as String?,
        maritalStatus: data['marital_status'] as String?,
        mobileNumber: data['mobile_number'] as String?,
        phoneNumber: data['phone_number'] as String?,
        phoneExt: data['phone_ext'] as String?,
        contractType: data['contract_type'] as String?,
        endOfContractDate: data['end_of_contract_date'] as String?,
        address: data['address'] as String?,
        personalPic: data['personal_pic'] as String?,
        countryId: castToType<int>(data['country_id']),
        stateId: castToType<int>(data['state_id']),
        cityId: castToType<int>(data['city_id']),
        otherNationality: castToType<int>(data['other_nationality']),
        designationId: castToType<int>(data['designation_id']),
        sectionId: castToType<int>(data['section_id']),
        departmentId: castToType<int>(data['department_id']),
        companyId: castToType<int>(data['company_id']),
        userId: castToType<int>(data['user_id']),
        reportedTo: castToType<int>(data['reported_to']),
        zkUserid: data['zk_userid'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        status: data['status'] as String?,
        deletedAt: data['deleted_at'] as String?,
        basicSalary: data['basic_salary'] as String?,
        numberOfChildren: castToType<int>(data['number_of_children']),
        bankNameAr: data['bank_name_ar'] as String?,
        bankNameEn: data['bank_name_en'] as String?,
        branchAr: data['branch_ar'] as String?,
        branchEn: data['branch_en'] as String?,
        bankCode: data['bank_code'] as String?,
        iban: data['IBAN'] as String?,
        branchCode: data['branch_code'] as String?,
        jobOfferDate: data['job_offer_date'] as String?,
        employmentNumber: data['employment_number'] as String?,
        personalEmail: data['personal_email'] as String?,
        area: data['area'] as String?,
        streetBuildingNumber: data['street_building_number'] as String?,
        shiftId: castToType<int>(data['shift_id']),
        name: data['name'] as String?,
        personalPicFullPath: data['personal_pic_full_path'] as String?,
        checkin: data['checkin'] as String?,
        tasksCount: data['tasks_count'] as String?,
        taskEst: data['task_est'] as String?,
        bankName: data['bank_name'] as String?,
        branch: data['branch'] as String?,
      );

  static EmployeeStruct? maybeFromMap(dynamic data) =>
      data is Map ? EmployeeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'first_name_en': _firstNameEn,
        'second_name_en': _secondNameEn,
        'third_name_en': _thirdNameEn,
        'last_name_en': _lastNameEn,
        'first_name_ar': _firstNameAr,
        'second_name_ar': _secondNameAr,
        'third_name_ar': _thirdNameAr,
        'last_name_ar': _lastNameAr,
        'gender': _gender,
        'birth_date': _birthDate,
        'religion_id': _religionId,
        'nationality': _nationality,
        'national_ID': _nationalID,
        'residency_number': _residencyNumber,
        'passport_number': _passportNumber,
        'hiring_date': _hiringDate,
        'end_of_probation_date': _endOfProbationDate,
        'marital_status': _maritalStatus,
        'mobile_number': _mobileNumber,
        'phone_number': _phoneNumber,
        'phone_ext': _phoneExt,
        'contract_type': _contractType,
        'end_of_contract_date': _endOfContractDate,
        'address': _address,
        'personal_pic': _personalPic,
        'country_id': _countryId,
        'state_id': _stateId,
        'city_id': _cityId,
        'other_nationality': _otherNationality,
        'designation_id': _designationId,
        'section_id': _sectionId,
        'department_id': _departmentId,
        'company_id': _companyId,
        'user_id': _userId,
        'reported_to': _reportedTo,
        'zk_userid': _zkUserid,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'status': _status,
        'deleted_at': _deletedAt,
        'basic_salary': _basicSalary,
        'number_of_children': _numberOfChildren,
        'bank_name_ar': _bankNameAr,
        'bank_name_en': _bankNameEn,
        'branch_ar': _branchAr,
        'branch_en': _branchEn,
        'bank_code': _bankCode,
        'IBAN': _iban,
        'branch_code': _branchCode,
        'job_offer_date': _jobOfferDate,
        'employment_number': _employmentNumber,
        'personal_email': _personalEmail,
        'area': _area,
        'street_building_number': _streetBuildingNumber,
        'shift_id': _shiftId,
        'name': _name,
        'personal_pic_full_path': _personalPicFullPath,
        'checkin': _checkin,
        'tasks_count': _tasksCount,
        'task_est': _taskEst,
        'bank_name': _bankName,
        'branch': _branch,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'first_name_en': serializeParam(
          _firstNameEn,
          ParamType.String,
        ),
        'second_name_en': serializeParam(
          _secondNameEn,
          ParamType.String,
        ),
        'third_name_en': serializeParam(
          _thirdNameEn,
          ParamType.String,
        ),
        'last_name_en': serializeParam(
          _lastNameEn,
          ParamType.String,
        ),
        'first_name_ar': serializeParam(
          _firstNameAr,
          ParamType.String,
        ),
        'second_name_ar': serializeParam(
          _secondNameAr,
          ParamType.String,
        ),
        'third_name_ar': serializeParam(
          _thirdNameAr,
          ParamType.String,
        ),
        'last_name_ar': serializeParam(
          _lastNameAr,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'birth_date': serializeParam(
          _birthDate,
          ParamType.String,
        ),
        'religion_id': serializeParam(
          _religionId,
          ParamType.int,
        ),
        'nationality': serializeParam(
          _nationality,
          ParamType.int,
        ),
        'national_ID': serializeParam(
          _nationalID,
          ParamType.String,
        ),
        'residency_number': serializeParam(
          _residencyNumber,
          ParamType.String,
        ),
        'passport_number': serializeParam(
          _passportNumber,
          ParamType.String,
        ),
        'hiring_date': serializeParam(
          _hiringDate,
          ParamType.String,
        ),
        'end_of_probation_date': serializeParam(
          _endOfProbationDate,
          ParamType.String,
        ),
        'marital_status': serializeParam(
          _maritalStatus,
          ParamType.String,
        ),
        'mobile_number': serializeParam(
          _mobileNumber,
          ParamType.String,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'phone_ext': serializeParam(
          _phoneExt,
          ParamType.String,
        ),
        'contract_type': serializeParam(
          _contractType,
          ParamType.String,
        ),
        'end_of_contract_date': serializeParam(
          _endOfContractDate,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'personal_pic': serializeParam(
          _personalPic,
          ParamType.String,
        ),
        'country_id': serializeParam(
          _countryId,
          ParamType.int,
        ),
        'state_id': serializeParam(
          _stateId,
          ParamType.int,
        ),
        'city_id': serializeParam(
          _cityId,
          ParamType.int,
        ),
        'other_nationality': serializeParam(
          _otherNationality,
          ParamType.int,
        ),
        'designation_id': serializeParam(
          _designationId,
          ParamType.int,
        ),
        'section_id': serializeParam(
          _sectionId,
          ParamType.int,
        ),
        'department_id': serializeParam(
          _departmentId,
          ParamType.int,
        ),
        'company_id': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'reported_to': serializeParam(
          _reportedTo,
          ParamType.int,
        ),
        'zk_userid': serializeParam(
          _zkUserid,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'deleted_at': serializeParam(
          _deletedAt,
          ParamType.String,
        ),
        'basic_salary': serializeParam(
          _basicSalary,
          ParamType.String,
        ),
        'number_of_children': serializeParam(
          _numberOfChildren,
          ParamType.int,
        ),
        'bank_name_ar': serializeParam(
          _bankNameAr,
          ParamType.String,
        ),
        'bank_name_en': serializeParam(
          _bankNameEn,
          ParamType.String,
        ),
        'branch_ar': serializeParam(
          _branchAr,
          ParamType.String,
        ),
        'branch_en': serializeParam(
          _branchEn,
          ParamType.String,
        ),
        'bank_code': serializeParam(
          _bankCode,
          ParamType.String,
        ),
        'IBAN': serializeParam(
          _iban,
          ParamType.String,
        ),
        'branch_code': serializeParam(
          _branchCode,
          ParamType.String,
        ),
        'job_offer_date': serializeParam(
          _jobOfferDate,
          ParamType.String,
        ),
        'employment_number': serializeParam(
          _employmentNumber,
          ParamType.String,
        ),
        'personal_email': serializeParam(
          _personalEmail,
          ParamType.String,
        ),
        'area': serializeParam(
          _area,
          ParamType.String,
        ),
        'street_building_number': serializeParam(
          _streetBuildingNumber,
          ParamType.String,
        ),
        'shift_id': serializeParam(
          _shiftId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'personal_pic_full_path': serializeParam(
          _personalPicFullPath,
          ParamType.String,
        ),
        'checkin': serializeParam(
          _checkin,
          ParamType.String,
        ),
        'tasks_count': serializeParam(
          _tasksCount,
          ParamType.String,
        ),
        'task_est': serializeParam(
          _taskEst,
          ParamType.String,
        ),
        'bank_name': serializeParam(
          _bankName,
          ParamType.String,
        ),
        'branch': serializeParam(
          _branch,
          ParamType.String,
        ),
      }.withoutNulls;

  static EmployeeStruct fromSerializableMap(Map<String, dynamic> data) =>
      EmployeeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        firstNameEn: deserializeParam(
          data['first_name_en'],
          ParamType.String,
          false,
        ),
        secondNameEn: deserializeParam(
          data['second_name_en'],
          ParamType.String,
          false,
        ),
        thirdNameEn: deserializeParam(
          data['third_name_en'],
          ParamType.String,
          false,
        ),
        lastNameEn: deserializeParam(
          data['last_name_en'],
          ParamType.String,
          false,
        ),
        firstNameAr: deserializeParam(
          data['first_name_ar'],
          ParamType.String,
          false,
        ),
        secondNameAr: deserializeParam(
          data['second_name_ar'],
          ParamType.String,
          false,
        ),
        thirdNameAr: deserializeParam(
          data['third_name_ar'],
          ParamType.String,
          false,
        ),
        lastNameAr: deserializeParam(
          data['last_name_ar'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        birthDate: deserializeParam(
          data['birth_date'],
          ParamType.String,
          false,
        ),
        religionId: deserializeParam(
          data['religion_id'],
          ParamType.int,
          false,
        ),
        nationality: deserializeParam(
          data['nationality'],
          ParamType.int,
          false,
        ),
        nationalID: deserializeParam(
          data['national_ID'],
          ParamType.String,
          false,
        ),
        residencyNumber: deserializeParam(
          data['residency_number'],
          ParamType.String,
          false,
        ),
        passportNumber: deserializeParam(
          data['passport_number'],
          ParamType.String,
          false,
        ),
        hiringDate: deserializeParam(
          data['hiring_date'],
          ParamType.String,
          false,
        ),
        endOfProbationDate: deserializeParam(
          data['end_of_probation_date'],
          ParamType.String,
          false,
        ),
        maritalStatus: deserializeParam(
          data['marital_status'],
          ParamType.String,
          false,
        ),
        mobileNumber: deserializeParam(
          data['mobile_number'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        phoneExt: deserializeParam(
          data['phone_ext'],
          ParamType.String,
          false,
        ),
        contractType: deserializeParam(
          data['contract_type'],
          ParamType.String,
          false,
        ),
        endOfContractDate: deserializeParam(
          data['end_of_contract_date'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        personalPic: deserializeParam(
          data['personal_pic'],
          ParamType.String,
          false,
        ),
        countryId: deserializeParam(
          data['country_id'],
          ParamType.int,
          false,
        ),
        stateId: deserializeParam(
          data['state_id'],
          ParamType.int,
          false,
        ),
        cityId: deserializeParam(
          data['city_id'],
          ParamType.int,
          false,
        ),
        otherNationality: deserializeParam(
          data['other_nationality'],
          ParamType.int,
          false,
        ),
        designationId: deserializeParam(
          data['designation_id'],
          ParamType.int,
          false,
        ),
        sectionId: deserializeParam(
          data['section_id'],
          ParamType.int,
          false,
        ),
        departmentId: deserializeParam(
          data['department_id'],
          ParamType.int,
          false,
        ),
        companyId: deserializeParam(
          data['company_id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        reportedTo: deserializeParam(
          data['reported_to'],
          ParamType.int,
          false,
        ),
        zkUserid: deserializeParam(
          data['zk_userid'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        deletedAt: deserializeParam(
          data['deleted_at'],
          ParamType.String,
          false,
        ),
        basicSalary: deserializeParam(
          data['basic_salary'],
          ParamType.String,
          false,
        ),
        numberOfChildren: deserializeParam(
          data['number_of_children'],
          ParamType.int,
          false,
        ),
        bankNameAr: deserializeParam(
          data['bank_name_ar'],
          ParamType.String,
          false,
        ),
        bankNameEn: deserializeParam(
          data['bank_name_en'],
          ParamType.String,
          false,
        ),
        branchAr: deserializeParam(
          data['branch_ar'],
          ParamType.String,
          false,
        ),
        branchEn: deserializeParam(
          data['branch_en'],
          ParamType.String,
          false,
        ),
        bankCode: deserializeParam(
          data['bank_code'],
          ParamType.String,
          false,
        ),
        iban: deserializeParam(
          data['IBAN'],
          ParamType.String,
          false,
        ),
        branchCode: deserializeParam(
          data['branch_code'],
          ParamType.String,
          false,
        ),
        jobOfferDate: deserializeParam(
          data['job_offer_date'],
          ParamType.String,
          false,
        ),
        employmentNumber: deserializeParam(
          data['employment_number'],
          ParamType.String,
          false,
        ),
        personalEmail: deserializeParam(
          data['personal_email'],
          ParamType.String,
          false,
        ),
        area: deserializeParam(
          data['area'],
          ParamType.String,
          false,
        ),
        streetBuildingNumber: deserializeParam(
          data['street_building_number'],
          ParamType.String,
          false,
        ),
        shiftId: deserializeParam(
          data['shift_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        personalPicFullPath: deserializeParam(
          data['personal_pic_full_path'],
          ParamType.String,
          false,
        ),
        checkin: deserializeParam(
          data['checkin'],
          ParamType.String,
          false,
        ),
        tasksCount: deserializeParam(
          data['tasks_count'],
          ParamType.String,
          false,
        ),
        taskEst: deserializeParam(
          data['task_est'],
          ParamType.String,
          false,
        ),
        bankName: deserializeParam(
          data['bank_name'],
          ParamType.String,
          false,
        ),
        branch: deserializeParam(
          data['branch'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EmployeeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EmployeeStruct &&
        id == other.id &&
        firstNameEn == other.firstNameEn &&
        secondNameEn == other.secondNameEn &&
        thirdNameEn == other.thirdNameEn &&
        lastNameEn == other.lastNameEn &&
        firstNameAr == other.firstNameAr &&
        secondNameAr == other.secondNameAr &&
        thirdNameAr == other.thirdNameAr &&
        lastNameAr == other.lastNameAr &&
        gender == other.gender &&
        birthDate == other.birthDate &&
        religionId == other.religionId &&
        nationality == other.nationality &&
        nationalID == other.nationalID &&
        residencyNumber == other.residencyNumber &&
        passportNumber == other.passportNumber &&
        hiringDate == other.hiringDate &&
        endOfProbationDate == other.endOfProbationDate &&
        maritalStatus == other.maritalStatus &&
        mobileNumber == other.mobileNumber &&
        phoneNumber == other.phoneNumber &&
        phoneExt == other.phoneExt &&
        contractType == other.contractType &&
        endOfContractDate == other.endOfContractDate &&
        address == other.address &&
        personalPic == other.personalPic &&
        countryId == other.countryId &&
        stateId == other.stateId &&
        cityId == other.cityId &&
        otherNationality == other.otherNationality &&
        designationId == other.designationId &&
        sectionId == other.sectionId &&
        departmentId == other.departmentId &&
        companyId == other.companyId &&
        userId == other.userId &&
        reportedTo == other.reportedTo &&
        zkUserid == other.zkUserid &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        status == other.status &&
        deletedAt == other.deletedAt &&
        basicSalary == other.basicSalary &&
        numberOfChildren == other.numberOfChildren &&
        bankNameAr == other.bankNameAr &&
        bankNameEn == other.bankNameEn &&
        branchAr == other.branchAr &&
        branchEn == other.branchEn &&
        bankCode == other.bankCode &&
        iban == other.iban &&
        branchCode == other.branchCode &&
        jobOfferDate == other.jobOfferDate &&
        employmentNumber == other.employmentNumber &&
        personalEmail == other.personalEmail &&
        area == other.area &&
        streetBuildingNumber == other.streetBuildingNumber &&
        shiftId == other.shiftId &&
        name == other.name &&
        personalPicFullPath == other.personalPicFullPath &&
        checkin == other.checkin &&
        tasksCount == other.tasksCount &&
        taskEst == other.taskEst &&
        bankName == other.bankName &&
        branch == other.branch;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        firstNameEn,
        secondNameEn,
        thirdNameEn,
        lastNameEn,
        firstNameAr,
        secondNameAr,
        thirdNameAr,
        lastNameAr,
        gender,
        birthDate,
        religionId,
        nationality,
        nationalID,
        residencyNumber,
        passportNumber,
        hiringDate,
        endOfProbationDate,
        maritalStatus,
        mobileNumber,
        phoneNumber,
        phoneExt,
        contractType,
        endOfContractDate,
        address,
        personalPic,
        countryId,
        stateId,
        cityId,
        otherNationality,
        designationId,
        sectionId,
        departmentId,
        companyId,
        userId,
        reportedTo,
        zkUserid,
        createdAt,
        updatedAt,
        status,
        deletedAt,
        basicSalary,
        numberOfChildren,
        bankNameAr,
        bankNameEn,
        branchAr,
        branchEn,
        bankCode,
        iban,
        branchCode,
        jobOfferDate,
        employmentNumber,
        personalEmail,
        area,
        streetBuildingNumber,
        shiftId,
        name,
        personalPicFullPath,
        checkin,
        tasksCount,
        taskEst,
        bankName,
        branch
      ]);
}

EmployeeStruct createEmployeeStruct({
  int? id,
  String? firstNameEn,
  String? secondNameEn,
  String? thirdNameEn,
  String? lastNameEn,
  String? firstNameAr,
  String? secondNameAr,
  String? thirdNameAr,
  String? lastNameAr,
  String? gender,
  String? birthDate,
  int? religionId,
  int? nationality,
  String? nationalID,
  String? residencyNumber,
  String? passportNumber,
  String? hiringDate,
  String? endOfProbationDate,
  String? maritalStatus,
  String? mobileNumber,
  String? phoneNumber,
  String? phoneExt,
  String? contractType,
  String? endOfContractDate,
  String? address,
  String? personalPic,
  int? countryId,
  int? stateId,
  int? cityId,
  int? otherNationality,
  int? designationId,
  int? sectionId,
  int? departmentId,
  int? companyId,
  int? userId,
  int? reportedTo,
  String? zkUserid,
  String? createdAt,
  String? updatedAt,
  String? status,
  String? deletedAt,
  String? basicSalary,
  int? numberOfChildren,
  String? bankNameAr,
  String? bankNameEn,
  String? branchAr,
  String? branchEn,
  String? bankCode,
  String? iban,
  String? branchCode,
  String? jobOfferDate,
  String? employmentNumber,
  String? personalEmail,
  String? area,
  String? streetBuildingNumber,
  int? shiftId,
  String? name,
  String? personalPicFullPath,
  String? checkin,
  String? tasksCount,
  String? taskEst,
  String? bankName,
  String? branch,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EmployeeStruct(
      id: id,
      firstNameEn: firstNameEn,
      secondNameEn: secondNameEn,
      thirdNameEn: thirdNameEn,
      lastNameEn: lastNameEn,
      firstNameAr: firstNameAr,
      secondNameAr: secondNameAr,
      thirdNameAr: thirdNameAr,
      lastNameAr: lastNameAr,
      gender: gender,
      birthDate: birthDate,
      religionId: religionId,
      nationality: nationality,
      nationalID: nationalID,
      residencyNumber: residencyNumber,
      passportNumber: passportNumber,
      hiringDate: hiringDate,
      endOfProbationDate: endOfProbationDate,
      maritalStatus: maritalStatus,
      mobileNumber: mobileNumber,
      phoneNumber: phoneNumber,
      phoneExt: phoneExt,
      contractType: contractType,
      endOfContractDate: endOfContractDate,
      address: address,
      personalPic: personalPic,
      countryId: countryId,
      stateId: stateId,
      cityId: cityId,
      otherNationality: otherNationality,
      designationId: designationId,
      sectionId: sectionId,
      departmentId: departmentId,
      companyId: companyId,
      userId: userId,
      reportedTo: reportedTo,
      zkUserid: zkUserid,
      createdAt: createdAt,
      updatedAt: updatedAt,
      status: status,
      deletedAt: deletedAt,
      basicSalary: basicSalary,
      numberOfChildren: numberOfChildren,
      bankNameAr: bankNameAr,
      bankNameEn: bankNameEn,
      branchAr: branchAr,
      branchEn: branchEn,
      bankCode: bankCode,
      iban: iban,
      branchCode: branchCode,
      jobOfferDate: jobOfferDate,
      employmentNumber: employmentNumber,
      personalEmail: personalEmail,
      area: area,
      streetBuildingNumber: streetBuildingNumber,
      shiftId: shiftId,
      name: name,
      personalPicFullPath: personalPicFullPath,
      checkin: checkin,
      tasksCount: tasksCount,
      taskEst: taskEst,
      bankName: bankName,
      branch: branch,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EmployeeStruct? updateEmployeeStruct(
  EmployeeStruct? employee, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    employee
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEmployeeStructData(
  Map<String, dynamic> firestoreData,
  EmployeeStruct? employee,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (employee == null) {
    return;
  }
  if (employee.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && employee.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final employeeData = getEmployeeFirestoreData(employee, forFieldValue);
  final nestedData = employeeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = employee.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEmployeeFirestoreData(
  EmployeeStruct? employee, [
  bool forFieldValue = false,
]) {
  if (employee == null) {
    return {};
  }
  final firestoreData = mapToFirestore(employee.toMap());

  // Add any Firestore field values
  employee.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEmployeeListFirestoreData(
  List<EmployeeStruct>? employees,
) =>
    employees?.map((e) => getEmployeeFirestoreData(e, true)).toList() ?? [];
