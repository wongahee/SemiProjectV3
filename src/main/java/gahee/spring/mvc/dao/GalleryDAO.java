package gahee.spring.mvc.dao;

import gahee.spring.mvc.vo.Gallery;

import java.util.List;

public interface GalleryDAO {

    int insertGallery(Gallery g);

    List<Gallery> selectGallery(int snum);

    Gallery selectOneGallery(String gno);
}
