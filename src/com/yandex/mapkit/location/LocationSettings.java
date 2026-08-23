package com.yandex.mapkit.location;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class LocationSettings implements Serializable {
    private Range accuracy;
    private boolean accuracy__is_initialized;
    private Range headingError;
    private boolean headingError__is_initialized;
    private LocationError locationError;
    private boolean locationError__is_initialized;
    private TimeInterval locationTimeInterval;
    private boolean locationTimeInterval__is_initialized;
    private NativeObject nativeObject;
    private boolean provideAccuracy;
    private boolean provideAccuracy__is_initialized;
    private boolean provideHeading;
    private boolean provideHeading__is_initialized;
    private boolean provideSpeed;
    private boolean provideSpeed__is_initialized;
    private boolean provideWheelSpeed;
    private boolean provideWheelSpeed__is_initialized;
    private double speed;
    private boolean speed__is_initialized;
    private TimeInterval wheelSpeedTimeInterval;
    private boolean wheelSpeedTimeInterval__is_initialized;

    private native Range getAccuracy__Native();

    private native Range getHeadingError__Native();

    private native LocationError getLocationError__Native();

    private native TimeInterval getLocationTimeInterval__Native();

    private native boolean getProvideAccuracy__Native();

    private native boolean getProvideHeading__Native();

    private native boolean getProvideSpeed__Native();

    private native boolean getProvideWheelSpeed__Native();

    private native double getSpeed__Native();

    private native TimeInterval getWheelSpeedTimeInterval__Native();

    private native NativeObject init(boolean z, Range range, TimeInterval timeInterval, boolean z2, double d, boolean z3, Range range2, LocationError locationError, boolean z4, TimeInterval timeInterval2);

    public LocationSettings() {
        this.provideAccuracy__is_initialized = false;
        this.accuracy__is_initialized = false;
        this.locationTimeInterval__is_initialized = false;
        this.provideSpeed__is_initialized = false;
        this.speed__is_initialized = false;
        this.provideHeading__is_initialized = false;
        this.headingError__is_initialized = false;
        this.locationError__is_initialized = false;
        this.provideWheelSpeed__is_initialized = false;
        this.wheelSpeedTimeInterval__is_initialized = false;
    }

    public LocationSettings(boolean z, Range range, TimeInterval timeInterval, boolean z2, double d, boolean z3, Range range2, LocationError locationError, boolean z4, TimeInterval timeInterval2) {
        this.provideAccuracy__is_initialized = false;
        this.accuracy__is_initialized = false;
        this.locationTimeInterval__is_initialized = false;
        this.provideSpeed__is_initialized = false;
        this.speed__is_initialized = false;
        this.provideHeading__is_initialized = false;
        this.headingError__is_initialized = false;
        this.locationError__is_initialized = false;
        this.provideWheelSpeed__is_initialized = false;
        this.wheelSpeedTimeInterval__is_initialized = false;
        if (timeInterval == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"locationTimeInterval\" cannot be null");
            throw null;
        }
        if (locationError == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"locationError\" cannot be null");
            throw null;
        }
        if (timeInterval2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"wheelSpeedTimeInterval\" cannot be null");
            throw null;
        }
        this.nativeObject = init(z, range, timeInterval, z2, d, z3, range2, locationError, z4, timeInterval2);
        this.provideAccuracy = z;
        this.provideAccuracy__is_initialized = true;
        this.accuracy = range;
        this.accuracy__is_initialized = true;
        this.locationTimeInterval = timeInterval;
        this.locationTimeInterval__is_initialized = true;
        this.provideSpeed = z2;
        this.provideSpeed__is_initialized = true;
        this.speed = d;
        this.speed__is_initialized = true;
        this.provideHeading = z3;
        this.provideHeading__is_initialized = true;
        this.headingError = range2;
        this.headingError__is_initialized = true;
        this.locationError = locationError;
        this.locationError__is_initialized = true;
        this.provideWheelSpeed = z4;
        this.provideWheelSpeed__is_initialized = true;
        this.wheelSpeedTimeInterval = timeInterval2;
        this.wheelSpeedTimeInterval__is_initialized = true;
    }

    private LocationSettings(NativeObject nativeObject) {
        this.provideAccuracy__is_initialized = false;
        this.accuracy__is_initialized = false;
        this.locationTimeInterval__is_initialized = false;
        this.provideSpeed__is_initialized = false;
        this.speed__is_initialized = false;
        this.provideHeading__is_initialized = false;
        this.headingError__is_initialized = false;
        this.locationError__is_initialized = false;
        this.provideWheelSpeed__is_initialized = false;
        this.wheelSpeedTimeInterval__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized boolean getProvideAccuracy() {
        try {
            if (!this.provideAccuracy__is_initialized) {
                this.provideAccuracy = getProvideAccuracy__Native();
                this.provideAccuracy__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.provideAccuracy;
    }

    public synchronized Range getAccuracy() {
        try {
            if (!this.accuracy__is_initialized) {
                this.accuracy = getAccuracy__Native();
                this.accuracy__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.accuracy;
    }

    public synchronized TimeInterval getLocationTimeInterval() {
        try {
            if (!this.locationTimeInterval__is_initialized) {
                this.locationTimeInterval = getLocationTimeInterval__Native();
                this.locationTimeInterval__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.locationTimeInterval;
    }

    public synchronized boolean getProvideSpeed() {
        try {
            if (!this.provideSpeed__is_initialized) {
                this.provideSpeed = getProvideSpeed__Native();
                this.provideSpeed__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.provideSpeed;
    }

    public synchronized double getSpeed() {
        try {
            if (!this.speed__is_initialized) {
                this.speed = getSpeed__Native();
                this.speed__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.speed;
    }

    public synchronized boolean getProvideHeading() {
        try {
            if (!this.provideHeading__is_initialized) {
                this.provideHeading = getProvideHeading__Native();
                this.provideHeading__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.provideHeading;
    }

    public synchronized Range getHeadingError() {
        try {
            if (!this.headingError__is_initialized) {
                this.headingError = getHeadingError__Native();
                this.headingError__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.headingError;
    }

    public synchronized LocationError getLocationError() {
        try {
            if (!this.locationError__is_initialized) {
                this.locationError = getLocationError__Native();
                this.locationError__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.locationError;
    }

    public synchronized boolean getProvideWheelSpeed() {
        try {
            if (!this.provideWheelSpeed__is_initialized) {
                this.provideWheelSpeed = getProvideWheelSpeed__Native();
                this.provideWheelSpeed__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.provideWheelSpeed;
    }

    public synchronized TimeInterval getWheelSpeedTimeInterval() {
        try {
            if (!this.wheelSpeedTimeInterval__is_initialized) {
                this.wheelSpeedTimeInterval = getWheelSpeedTimeInterval__Native();
                this.wheelSpeedTimeInterval__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.wheelSpeedTimeInterval;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.provideAccuracy = archive.add(this.provideAccuracy);
            this.provideAccuracy__is_initialized = true;
            this.accuracy = (Range) archive.add(this.accuracy, true, (Class<Range>) Range.class);
            this.accuracy__is_initialized = true;
            this.locationTimeInterval = (TimeInterval) archive.add(this.locationTimeInterval, false, (Class<TimeInterval>) TimeInterval.class);
            this.locationTimeInterval__is_initialized = true;
            this.provideSpeed = archive.add(this.provideSpeed);
            this.provideSpeed__is_initialized = true;
            this.speed = archive.add(this.speed);
            this.speed__is_initialized = true;
            this.provideHeading = archive.add(this.provideHeading);
            this.provideHeading__is_initialized = true;
            this.headingError = (Range) archive.add(this.headingError, true, (Class<Range>) Range.class);
            this.headingError__is_initialized = true;
            this.locationError = (LocationError) archive.add(this.locationError, false, (Class<LocationError>) LocationError.class);
            this.locationError__is_initialized = true;
            this.provideWheelSpeed = archive.add(this.provideWheelSpeed);
            this.provideWheelSpeed__is_initialized = true;
            TimeInterval timeInterval = (TimeInterval) archive.add(this.wheelSpeedTimeInterval, false, (Class<TimeInterval>) TimeInterval.class);
            this.wheelSpeedTimeInterval = timeInterval;
            this.wheelSpeedTimeInterval__is_initialized = true;
            this.nativeObject = init(this.provideAccuracy, this.accuracy, this.locationTimeInterval, this.provideSpeed, this.speed, this.provideHeading, this.headingError, this.locationError, this.provideWheelSpeed, timeInterval);
            return;
        }
        archive.add(getProvideAccuracy());
        archive.add(getAccuracy(), true, (Class<Range>) Range.class);
        archive.add(getLocationTimeInterval(), false, (Class<TimeInterval>) TimeInterval.class);
        archive.add(getProvideSpeed());
        archive.add(getSpeed());
        archive.add(getProvideHeading());
        archive.add(getHeadingError(), true, (Class<Range>) Range.class);
        archive.add(getLocationError(), false, (Class<LocationError>) LocationError.class);
        archive.add(getProvideWheelSpeed());
        archive.add(getWheelSpeedTimeInterval(), false, (Class<TimeInterval>) TimeInterval.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::location::LocationSettings";
    }
}
