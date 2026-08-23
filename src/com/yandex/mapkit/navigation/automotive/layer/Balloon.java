package com.yandex.mapkit.navigation.automotive.layer;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Balloon implements Serializable {
    private AlternativeBalloon alternative;
    private LaneSignBalloon laneSign;
    private ManoeuvreBalloon manoeuvre;
    private ManoeuvreWithLaneSignBalloon manoeuvreWithLaneSign;
    private RouteSummaryBalloon routeSummary;

    public static Balloon fromManoeuvre(ManoeuvreBalloon manoeuvreBalloon) {
        if (manoeuvreBalloon == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"manoeuvre\" cannot be null");
            return null;
        }
        Balloon balloon = new Balloon();
        balloon.manoeuvre = manoeuvreBalloon;
        return balloon;
    }

    public static Balloon fromManoeuvreWithLaneSign(ManoeuvreWithLaneSignBalloon manoeuvreWithLaneSignBalloon) {
        if (manoeuvreWithLaneSignBalloon == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"manoeuvreWithLaneSign\" cannot be null");
            return null;
        }
        Balloon balloon = new Balloon();
        balloon.manoeuvreWithLaneSign = manoeuvreWithLaneSignBalloon;
        return balloon;
    }

    public static Balloon fromLaneSign(LaneSignBalloon laneSignBalloon) {
        if (laneSignBalloon == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"laneSign\" cannot be null");
            return null;
        }
        Balloon balloon = new Balloon();
        balloon.laneSign = laneSignBalloon;
        return balloon;
    }

    public static Balloon fromRouteSummary(RouteSummaryBalloon routeSummaryBalloon) {
        if (routeSummaryBalloon == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"routeSummary\" cannot be null");
            return null;
        }
        Balloon balloon = new Balloon();
        balloon.routeSummary = routeSummaryBalloon;
        return balloon;
    }

    public static Balloon fromAlternative(AlternativeBalloon alternativeBalloon) {
        if (alternativeBalloon == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Variant value \"alternative\" cannot be null");
            return null;
        }
        Balloon balloon = new Balloon();
        balloon.alternative = alternativeBalloon;
        return balloon;
    }

    public ManoeuvreBalloon getManoeuvre() {
        return this.manoeuvre;
    }

    public ManoeuvreWithLaneSignBalloon getManoeuvreWithLaneSign() {
        return this.manoeuvreWithLaneSign;
    }

    public LaneSignBalloon getLaneSign() {
        return this.laneSign;
    }

    public RouteSummaryBalloon getRouteSummary() {
        return this.routeSummary;
    }

    public AlternativeBalloon getAlternative() {
        return this.alternative;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.manoeuvre = (ManoeuvreBalloon) archive.add(this.manoeuvre, true, (Class<ManoeuvreBalloon>) ManoeuvreBalloon.class);
        this.manoeuvreWithLaneSign = (ManoeuvreWithLaneSignBalloon) archive.add(this.manoeuvreWithLaneSign, true, (Class<ManoeuvreWithLaneSignBalloon>) ManoeuvreWithLaneSignBalloon.class);
        this.laneSign = (LaneSignBalloon) archive.add(this.laneSign, true, (Class<LaneSignBalloon>) LaneSignBalloon.class);
        this.routeSummary = (RouteSummaryBalloon) archive.add(this.routeSummary, true, (Class<RouteSummaryBalloon>) RouteSummaryBalloon.class);
        this.alternative = (AlternativeBalloon) archive.add(this.alternative, true, (Class<AlternativeBalloon>) AlternativeBalloon.class);
    }
}
