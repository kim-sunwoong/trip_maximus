package com.maximusteam.tripfulaxel.guide.model.dto;

public class TripThemeChoiceDTO {
	
	private int themeChoiceCode;
	private int themeCode; // 1	직접 체험하는 액티비티
  						   // 2	온몸으로 느끼는 자연
						   // 3	가이드만 알고 있는 시크릿 스팟 여행
						   // 4	이 곳에서만 맛 볼 수 있는 로컬 맛집/카페
						   // 5	인생샷을 건지는 스냅
	private int tripCode;
	
	public TripThemeChoiceDTO() {
		super();
	}
	
	@Override
	public String toString() {
		return "TripThemeChoiceDTO [themeChoiceCode=" + themeChoiceCode + ", themeCode=" + themeCode + ", tripCode="
				+ tripCode + "]";
	}

	public int getThemeChoiceCode() {
		return themeChoiceCode;
	}

	public void setThemeChoiceCode(int themeChoiceCode) {
		this.themeChoiceCode = themeChoiceCode;
	}

	public int getThemeCode() {
		return themeCode;
	}

	public void setThemeCode(int themeCode) {
		this.themeCode = themeCode;
	}

	public int getTripCode() {
		return tripCode;
	}

	public void setTripCode(int tripCode) {
		this.tripCode = tripCode;
	}

	public TripThemeChoiceDTO(int themeChoiceCode, int themeCode, int tripCode) {
		super();
		this.themeChoiceCode = themeChoiceCode;
		this.themeCode = themeCode;
		this.tripCode = tripCode;
	}
}
