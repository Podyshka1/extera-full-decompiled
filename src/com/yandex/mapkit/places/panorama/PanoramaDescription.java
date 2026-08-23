package com.yandex.mapkit.places.panorama;

import com.yandex.mapkit.Attribution;
import com.yandex.mapkit.geometry.Direction;
import com.yandex.mapkit.geometry.Span;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class PanoramaDescription implements Serializable {
    private AngularBoundingBox angularBBox;
    private boolean angularBBox__is_initialized;
    private List<ArrowConnection> arrowConnections;
    private boolean arrowConnections__is_initialized;
    private Attribution attribution;
    private boolean attribution__is_initialized;
    private List<CompanyMarker> companyMarkers;
    private boolean companyMarkers__is_initialized;
    private Direction direction;
    private boolean direction__is_initialized;
    private List<IconConnection> iconConnections;
    private boolean iconConnections__is_initialized;
    private List<IconMarker> iconMarkers;
    private boolean iconMarkers__is_initialized;
    private NativeObject nativeObject;
    private String panoramaId;
    private boolean panoramaId__is_initialized;
    private Position position;
    private boolean position__is_initialized;
    private Span span;
    private boolean span__is_initialized;
    private List<TextMarker> textMarkers;
    private boolean textMarkers__is_initialized;
    private List<TileLevel> tileLevels;
    private boolean tileLevels__is_initialized;
    private ImageSize tileSize;
    private boolean tileSize__is_initialized;

    private native AngularBoundingBox getAngularBBox__Native();

    private native List<ArrowConnection> getArrowConnections__Native();

    private native Attribution getAttribution__Native();

    private native List<CompanyMarker> getCompanyMarkers__Native();

    private native Direction getDirection__Native();

    private native List<IconConnection> getIconConnections__Native();

    private native List<IconMarker> getIconMarkers__Native();

    private native String getPanoramaId__Native();

    private native Position getPosition__Native();

    private native Span getSpan__Native();

    private native List<TextMarker> getTextMarkers__Native();

    private native List<TileLevel> getTileLevels__Native();

    private native ImageSize getTileSize__Native();

    private native NativeObject init(String str, Position position, AngularBoundingBox angularBoundingBox, ImageSize imageSize, List<TileLevel> list, List<IconMarker> list2, List<TextMarker> list3, List<CompanyMarker> list4, List<IconConnection> list5, List<ArrowConnection> list6, Direction direction, Span span, Attribution attribution);

    public PanoramaDescription() {
        this.panoramaId__is_initialized = false;
        this.position__is_initialized = false;
        this.angularBBox__is_initialized = false;
        this.tileSize__is_initialized = false;
        this.tileLevels__is_initialized = false;
        this.iconMarkers__is_initialized = false;
        this.textMarkers__is_initialized = false;
        this.companyMarkers__is_initialized = false;
        this.iconConnections__is_initialized = false;
        this.arrowConnections__is_initialized = false;
        this.direction__is_initialized = false;
        this.span__is_initialized = false;
        this.attribution__is_initialized = false;
    }

    public PanoramaDescription(String str, Position position, AngularBoundingBox angularBoundingBox, ImageSize imageSize, List<TileLevel> list, List<IconMarker> list2, List<TextMarker> list3, List<CompanyMarker> list4, List<IconConnection> list5, List<ArrowConnection> list6, Direction direction, Span span, Attribution attribution) {
        this.panoramaId__is_initialized = false;
        this.position__is_initialized = false;
        this.angularBBox__is_initialized = false;
        this.tileSize__is_initialized = false;
        this.tileLevels__is_initialized = false;
        this.iconMarkers__is_initialized = false;
        this.textMarkers__is_initialized = false;
        this.companyMarkers__is_initialized = false;
        this.iconConnections__is_initialized = false;
        this.arrowConnections__is_initialized = false;
        this.direction__is_initialized = false;
        this.span__is_initialized = false;
        this.attribution__is_initialized = false;
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"panoramaId\" cannot be null");
            throw null;
        }
        if (angularBoundingBox == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"angularBBox\" cannot be null");
            throw null;
        }
        if (imageSize == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"tileSize\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"tileLevels\" cannot be null");
            throw null;
        }
        if (list2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"iconMarkers\" cannot be null");
            throw null;
        }
        if (list3 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"textMarkers\" cannot be null");
            throw null;
        }
        if (list4 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"companyMarkers\" cannot be null");
            throw null;
        }
        if (list5 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"iconConnections\" cannot be null");
            throw null;
        }
        if (list6 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"arrowConnections\" cannot be null");
            throw null;
        }
        if (direction == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"direction\" cannot be null");
            throw null;
        }
        if (span == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"span\" cannot be null");
            throw null;
        }
        this.nativeObject = init(str, position, angularBoundingBox, imageSize, list, list2, list3, list4, list5, list6, direction, span, attribution);
        this.panoramaId = str;
        this.panoramaId__is_initialized = true;
        this.position = position;
        this.position__is_initialized = true;
        this.angularBBox = angularBoundingBox;
        this.angularBBox__is_initialized = true;
        this.tileSize = imageSize;
        this.tileSize__is_initialized = true;
        this.tileLevels = list;
        this.tileLevels__is_initialized = true;
        this.iconMarkers = list2;
        this.iconMarkers__is_initialized = true;
        this.textMarkers = list3;
        this.textMarkers__is_initialized = true;
        this.companyMarkers = list4;
        this.companyMarkers__is_initialized = true;
        this.iconConnections = list5;
        this.iconConnections__is_initialized = true;
        this.arrowConnections = list6;
        this.arrowConnections__is_initialized = true;
        this.direction = direction;
        this.direction__is_initialized = true;
        this.span = span;
        this.span__is_initialized = true;
        this.attribution = attribution;
        this.attribution__is_initialized = true;
    }

    private PanoramaDescription(NativeObject nativeObject) {
        this.panoramaId__is_initialized = false;
        this.position__is_initialized = false;
        this.angularBBox__is_initialized = false;
        this.tileSize__is_initialized = false;
        this.tileLevels__is_initialized = false;
        this.iconMarkers__is_initialized = false;
        this.textMarkers__is_initialized = false;
        this.companyMarkers__is_initialized = false;
        this.iconConnections__is_initialized = false;
        this.arrowConnections__is_initialized = false;
        this.direction__is_initialized = false;
        this.span__is_initialized = false;
        this.attribution__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getPanoramaId() {
        try {
            if (!this.panoramaId__is_initialized) {
                this.panoramaId = getPanoramaId__Native();
                this.panoramaId__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.panoramaId;
    }

    public synchronized Position getPosition() {
        try {
            if (!this.position__is_initialized) {
                this.position = getPosition__Native();
                this.position__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.position;
    }

    public synchronized AngularBoundingBox getAngularBBox() {
        try {
            if (!this.angularBBox__is_initialized) {
                this.angularBBox = getAngularBBox__Native();
                this.angularBBox__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.angularBBox;
    }

    public synchronized ImageSize getTileSize() {
        try {
            if (!this.tileSize__is_initialized) {
                this.tileSize = getTileSize__Native();
                this.tileSize__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.tileSize;
    }

    public synchronized List<TileLevel> getTileLevels() {
        try {
            if (!this.tileLevels__is_initialized) {
                this.tileLevels = getTileLevels__Native();
                this.tileLevels__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.tileLevels;
    }

    public synchronized List<IconMarker> getIconMarkers() {
        try {
            if (!this.iconMarkers__is_initialized) {
                this.iconMarkers = getIconMarkers__Native();
                this.iconMarkers__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.iconMarkers;
    }

    public synchronized List<TextMarker> getTextMarkers() {
        try {
            if (!this.textMarkers__is_initialized) {
                this.textMarkers = getTextMarkers__Native();
                this.textMarkers__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.textMarkers;
    }

    public synchronized List<CompanyMarker> getCompanyMarkers() {
        try {
            if (!this.companyMarkers__is_initialized) {
                this.companyMarkers = getCompanyMarkers__Native();
                this.companyMarkers__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.companyMarkers;
    }

    public synchronized List<IconConnection> getIconConnections() {
        try {
            if (!this.iconConnections__is_initialized) {
                this.iconConnections = getIconConnections__Native();
                this.iconConnections__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.iconConnections;
    }

    public synchronized List<ArrowConnection> getArrowConnections() {
        try {
            if (!this.arrowConnections__is_initialized) {
                this.arrowConnections = getArrowConnections__Native();
                this.arrowConnections__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.arrowConnections;
    }

    public synchronized Direction getDirection() {
        try {
            if (!this.direction__is_initialized) {
                this.direction = getDirection__Native();
                this.direction__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.direction;
    }

    public synchronized Span getSpan() {
        try {
            if (!this.span__is_initialized) {
                this.span = getSpan__Native();
                this.span__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.span;
    }

    public synchronized Attribution getAttribution() {
        try {
            if (!this.attribution__is_initialized) {
                this.attribution = getAttribution__Native();
                this.attribution__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.attribution;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.panoramaId = archive.add(this.panoramaId, false);
            this.panoramaId__is_initialized = true;
            this.position = (Position) archive.add(this.position, true, (Class<Position>) Position.class);
            this.position__is_initialized = true;
            this.angularBBox = (AngularBoundingBox) archive.add(this.angularBBox, false, (Class<AngularBoundingBox>) AngularBoundingBox.class);
            this.angularBBox__is_initialized = true;
            this.tileSize = (ImageSize) archive.add(this.tileSize, false, (Class<ImageSize>) ImageSize.class);
            this.tileSize__is_initialized = true;
            this.tileLevels = archive.add((List) this.tileLevels, false, (ArchivingHandler) new ClassHandler(TileLevel.class));
            this.tileLevels__is_initialized = true;
            this.iconMarkers = archive.add((List) this.iconMarkers, false, (ArchivingHandler) new ClassHandler(IconMarker.class));
            this.iconMarkers__is_initialized = true;
            this.textMarkers = archive.add((List) this.textMarkers, false, (ArchivingHandler) new ClassHandler(TextMarker.class));
            this.textMarkers__is_initialized = true;
            this.companyMarkers = archive.add((List) this.companyMarkers, false, (ArchivingHandler) new ClassHandler(CompanyMarker.class));
            this.companyMarkers__is_initialized = true;
            this.iconConnections = archive.add((List) this.iconConnections, false, (ArchivingHandler) new ClassHandler(IconConnection.class));
            this.iconConnections__is_initialized = true;
            this.arrowConnections = archive.add((List) this.arrowConnections, false, (ArchivingHandler) new ClassHandler(ArrowConnection.class));
            this.arrowConnections__is_initialized = true;
            this.direction = (Direction) archive.add(this.direction, false, (Class<Direction>) Direction.class);
            this.direction__is_initialized = true;
            this.span = (Span) archive.add(this.span, false, (Class<Span>) Span.class);
            this.span__is_initialized = true;
            Attribution attribution = (Attribution) archive.add(this.attribution, true, (Class<Attribution>) Attribution.class);
            this.attribution = attribution;
            this.attribution__is_initialized = true;
            this.nativeObject = init(this.panoramaId, this.position, this.angularBBox, this.tileSize, this.tileLevels, this.iconMarkers, this.textMarkers, this.companyMarkers, this.iconConnections, this.arrowConnections, this.direction, this.span, attribution);
            return;
        }
        archive.add(getPanoramaId(), false);
        archive.add(getPosition(), true, (Class<Position>) Position.class);
        archive.add(getAngularBBox(), false, (Class<AngularBoundingBox>) AngularBoundingBox.class);
        archive.add(getTileSize(), false, (Class<ImageSize>) ImageSize.class);
        archive.add((List) getTileLevels(), false, (ArchivingHandler) new ClassHandler(TileLevel.class));
        archive.add((List) getIconMarkers(), false, (ArchivingHandler) new ClassHandler(IconMarker.class));
        archive.add((List) getTextMarkers(), false, (ArchivingHandler) new ClassHandler(TextMarker.class));
        archive.add((List) getCompanyMarkers(), false, (ArchivingHandler) new ClassHandler(CompanyMarker.class));
        archive.add((List) getIconConnections(), false, (ArchivingHandler) new ClassHandler(IconConnection.class));
        archive.add((List) getArrowConnections(), false, (ArchivingHandler) new ClassHandler(ArrowConnection.class));
        archive.add(getDirection(), false, (Class<Direction>) Direction.class);
        archive.add(getSpan(), false, (Class<Span>) Span.class);
        archive.add(getAttribution(), true, (Class<Attribution>) Attribution.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::places::panorama::PanoramaDescription";
    }
}
