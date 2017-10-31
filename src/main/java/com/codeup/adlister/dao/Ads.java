package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    List<Ad> search(String searchAd);

    void userDelete(int id);

    Ad findById(Long id);
    Ad viewSingleAd(Long id);

//    void delete(Long id);

    Boolean delete(Long id);
}
