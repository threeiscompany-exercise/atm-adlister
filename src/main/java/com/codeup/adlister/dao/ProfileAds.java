package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface ProfileAds {
    List<Ad> all(Long id);
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    List<Ad> search(String searchAd);
}