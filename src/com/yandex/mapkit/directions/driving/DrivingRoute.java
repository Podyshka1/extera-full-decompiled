package com.yandex.mapkit.directions.driving;

import com.yandex.mapkit.RequestPoint;
import com.yandex.mapkit.annotations.AnnotationLanguage;
import com.yandex.mapkit.geometry.Polyline;
import com.yandex.mapkit.geometry.PolylinePosition;
import com.yandex.mapkit.navigation.JamSegment;
import com.yandex.mapkit.navigation.RoutePosition;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface DrivingRoute {
    void addConditionsListener(ConditionsListener conditionsListener);

    AnnotationLanguage getAnnotationLanguage();

    List<Checkpoint> getCheckpoints();

    List<DirectionSign> getDirectionSigns();

    List<Event> getEvents();

    List<Ferry> getFerries();

    List<FordCrossing> getFordCrossings();

    Polyline getGeometry();

    List<Highway> getHighways();

    List<JamSegment> getJamSegments();

    List<LaneSign> getLaneSigns();

    int getLegIndex();

    List<ManoeuvreVehicleRestriction> getManoeuvreVehicleRestrictions();

    DrivingRouteMetadata getMetadata();

    List<PedestrianCrossing> getPedestrianCrossings();

    PolylinePosition getPosition();

    List<RailwayCrossing> getRailwayCrossings();

    List<RequestPoint> getRequestPoints();

    List<RestrictedEntry> getRestrictedEntries();

    List<RestrictedTurn> getRestrictedTurns();

    List<RoadVehicleRestriction> getRoadVehicleRestrictions();

    String getRouteId();

    RoutePosition getRoutePosition();

    List<RuggedRoad> getRuggedRoads();

    List<DrivingSection> getSections();

    List<SpeedBump> getSpeedBumps();

    List<Float> getSpeedLimits();

    List<TollRoad> getTollRoads();

    List<TrafficLight> getTrafficLights();

    List<Tunnel> getTunnels();

    VehicleOptions getVehicleOptions();

    List<PolylinePosition> getWayPoints();

    List<ZoneCrossing> getZoneCrossings();

    boolean isAreConditionsOutdated();

    DrivingRouteMetadata metadataAt(PolylinePosition polylinePosition);

    void removeConditionsListener(ConditionsListener conditionsListener);

    void requestConditionsUpdate();

    int sectionIndex(int i);

    void setLegIndex(int i);

    void setPosition(PolylinePosition polylinePosition);
}
