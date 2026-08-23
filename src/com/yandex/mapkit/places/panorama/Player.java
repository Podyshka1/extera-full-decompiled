package com.yandex.mapkit.places.panorama;

import com.yandex.mapkit.geometry.Direction;
import com.yandex.mapkit.geometry.Point;
import com.yandex.mapkit.geometry.Span;
import com.yandex.mapkit.logo.Logo;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface Player {
    void addCompanyTapListener(CompanyTapListener companyTapListener);

    void addDirectionChangeListener(DirectionChangeListener directionChangeListener);

    void addErrorListener(ErrorListener errorListener);

    void addPanoramaChangeListener(PanoramaChangeListener panoramaChangeListener);

    void addSpanChangeListener(SpanChangeListener spanChangeListener);

    boolean companiesEnabled();

    Direction direction();

    void disableCompanies();

    void disableLoadingWheel();

    void disableMarkers();

    void disableMove();

    void disableRotation();

    void disableZoom();

    void enableCompanies();

    void enableLoadingWheel();

    void enableMarkers();

    void enableMove();

    void enableRotation();

    void enableZoom();

    Logo getLogo();

    List<HistoricalPanorama> historicalPanoramas();

    boolean isValid();

    boolean loadingWheelEnabled();

    void lookAt(Point point);

    boolean markersEnabled();

    boolean moveEnabled();

    void onMemoryWarning();

    void openPanorama(String str);

    void openUserPanoramaWithLocalDataSource(PanoramaDescription panoramaDescription, TileImageFactory tileImageFactory, IconImageFactory iconImageFactory, UserPanoramaEventListener userPanoramaEventListener);

    void openUserPanoramaWithNetworkDataSource(PanoramaDescription panoramaDescription, TileUrlProvider tileUrlProvider, IconUrlProvider iconUrlProvider, UserPanoramaEventListener userPanoramaEventListener);

    String panoramaId();

    Point position();

    void removeCompanyTapListener(CompanyTapListener companyTapListener);

    void removeDirectionChangeListener(DirectionChangeListener directionChangeListener);

    void removeErrorListener(ErrorListener errorListener);

    void removePanoramaChangeListener(PanoramaChangeListener panoramaChangeListener);

    void removeSpanChangeListener(SpanChangeListener spanChangeListener);

    void reset();

    boolean rotationEnabled();

    void setDirection(Direction direction);

    void setSpan(Span span);

    Span span();

    boolean zoomEnabled();
}
