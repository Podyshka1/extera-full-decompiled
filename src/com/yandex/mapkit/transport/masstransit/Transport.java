package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Transport implements Serializable {
    private Line line;
    private boolean line__is_initialized;
    private NativeObject nativeObject;
    private List<TransportContour> transportContours;
    private boolean transportContours__is_initialized;
    private List<TransportThread> transports;
    private boolean transports__is_initialized;

    private native Line getLine__Native();

    private native List<TransportContour> getTransportContours__Native();

    private native List<TransportThread> getTransports__Native();

    private native NativeObject init(Line line, List<TransportThread> list, List<TransportContour> list2);

    public static class TransportThread implements Serializable {
        private List<TransportThreadAlert> alerts;
        private boolean alerts__is_initialized;
        private Stop alternateDepartureStop;
        private boolean alternateDepartureStop__is_initialized;
        private BoardingOptions boardingOptions;
        private boolean boardingOptions__is_initialized;
        private boolean isRecommended;
        private boolean isRecommended__is_initialized;
        private NativeObject nativeObject;
        private Thread thread;
        private boolean thread__is_initialized;

        private native List<TransportThreadAlert> getAlerts__Native();

        private native Stop getAlternateDepartureStop__Native();

        private native BoardingOptions getBoardingOptions__Native();

        private native boolean getIsRecommended__Native();

        private native Thread getThread__Native();

        private native NativeObject init(Thread thread, boolean z, List<TransportThreadAlert> list, Stop stop, BoardingOptions boardingOptions);

        public TransportThread() {
            this.thread__is_initialized = false;
            this.isRecommended__is_initialized = false;
            this.alerts__is_initialized = false;
            this.alternateDepartureStop__is_initialized = false;
            this.boardingOptions__is_initialized = false;
        }

        public TransportThread(Thread thread, boolean z, List<TransportThreadAlert> list, Stop stop, BoardingOptions boardingOptions) {
            this.thread__is_initialized = false;
            this.isRecommended__is_initialized = false;
            this.alerts__is_initialized = false;
            this.alternateDepartureStop__is_initialized = false;
            this.boardingOptions__is_initialized = false;
            if (thread == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"thread\" cannot be null");
                throw null;
            }
            if (list == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Required field \"alerts\" cannot be null");
                throw null;
            }
            this.nativeObject = init(thread, z, list, stop, boardingOptions);
            this.thread = thread;
            this.thread__is_initialized = true;
            this.isRecommended = z;
            this.isRecommended__is_initialized = true;
            this.alerts = list;
            this.alerts__is_initialized = true;
            this.alternateDepartureStop = stop;
            this.alternateDepartureStop__is_initialized = true;
            this.boardingOptions = boardingOptions;
            this.boardingOptions__is_initialized = true;
        }

        private TransportThread(NativeObject nativeObject) {
            this.thread__is_initialized = false;
            this.isRecommended__is_initialized = false;
            this.alerts__is_initialized = false;
            this.alternateDepartureStop__is_initialized = false;
            this.boardingOptions__is_initialized = false;
            this.nativeObject = nativeObject;
        }

        public synchronized Thread getThread() {
            try {
                if (!this.thread__is_initialized) {
                    this.thread = getThread__Native();
                    this.thread__is_initialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.thread;
        }

        public synchronized boolean getIsRecommended() {
            try {
                if (!this.isRecommended__is_initialized) {
                    this.isRecommended = getIsRecommended__Native();
                    this.isRecommended__is_initialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.isRecommended;
        }

        public synchronized List<TransportThreadAlert> getAlerts() {
            try {
                if (!this.alerts__is_initialized) {
                    this.alerts = getAlerts__Native();
                    this.alerts__is_initialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.alerts;
        }

        public synchronized Stop getAlternateDepartureStop() {
            try {
                if (!this.alternateDepartureStop__is_initialized) {
                    this.alternateDepartureStop = getAlternateDepartureStop__Native();
                    this.alternateDepartureStop__is_initialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.alternateDepartureStop;
        }

        public synchronized BoardingOptions getBoardingOptions() {
            try {
                if (!this.boardingOptions__is_initialized) {
                    this.boardingOptions = getBoardingOptions__Native();
                    this.boardingOptions__is_initialized = true;
                }
            } catch (Throwable th) {
                throw th;
            }
            return this.boardingOptions;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            if (archive.isReader()) {
                this.thread = (Thread) archive.add(this.thread, false, (Class<Thread>) Thread.class);
                this.thread__is_initialized = true;
                this.isRecommended = archive.add(this.isRecommended);
                this.isRecommended__is_initialized = true;
                this.alerts = archive.add((List) this.alerts, false, (ArchivingHandler) new ClassHandler(TransportThreadAlert.class));
                this.alerts__is_initialized = true;
                this.alternateDepartureStop = (Stop) archive.add(this.alternateDepartureStop, true, (Class<Stop>) Stop.class);
                this.alternateDepartureStop__is_initialized = true;
                BoardingOptions boardingOptions = (BoardingOptions) archive.add(this.boardingOptions, true, (Class<BoardingOptions>) BoardingOptions.class);
                this.boardingOptions = boardingOptions;
                this.boardingOptions__is_initialized = true;
                this.nativeObject = init(this.thread, this.isRecommended, this.alerts, this.alternateDepartureStop, boardingOptions);
                return;
            }
            archive.add(getThread(), false, (Class<Thread>) Thread.class);
            archive.add(getIsRecommended());
            archive.add((List) getAlerts(), false, (ArchivingHandler) new ClassHandler(TransportThreadAlert.class));
            archive.add(getAlternateDepartureStop(), true, (Class<Stop>) Stop.class);
            archive.add(getBoardingOptions(), true, (Class<BoardingOptions>) BoardingOptions.class);
        }

        public static String getNativeName() {
            return "yandex::maps::mapkit::transport::masstransit::Transport::TransportThread";
        }
    }

    public Transport() {
        this.line__is_initialized = false;
        this.transports__is_initialized = false;
        this.transportContours__is_initialized = false;
    }

    public Transport(Line line, List<TransportThread> list, List<TransportContour> list2) {
        this.line__is_initialized = false;
        this.transports__is_initialized = false;
        this.transportContours__is_initialized = false;
        if (line == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"line\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"transports\" cannot be null");
            throw null;
        }
        if (list2 == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"transportContours\" cannot be null");
            throw null;
        }
        this.nativeObject = init(line, list, list2);
        this.line = line;
        this.line__is_initialized = true;
        this.transports = list;
        this.transports__is_initialized = true;
        this.transportContours = list2;
        this.transportContours__is_initialized = true;
    }

    private Transport(NativeObject nativeObject) {
        this.line__is_initialized = false;
        this.transports__is_initialized = false;
        this.transportContours__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Line getLine() {
        try {
            if (!this.line__is_initialized) {
                this.line = getLine__Native();
                this.line__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.line;
    }

    public synchronized List<TransportThread> getTransports() {
        try {
            if (!this.transports__is_initialized) {
                this.transports = getTransports__Native();
                this.transports__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.transports;
    }

    public synchronized List<TransportContour> getTransportContours() {
        try {
            if (!this.transportContours__is_initialized) {
                this.transportContours = getTransportContours__Native();
                this.transportContours__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.transportContours;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.line = (Line) archive.add(this.line, false, (Class<Line>) Line.class);
            this.line__is_initialized = true;
            this.transports = archive.add((List) this.transports, false, (ArchivingHandler) new ClassHandler(TransportThread.class));
            this.transports__is_initialized = true;
            List<TransportContour> listAdd = archive.add((List) this.transportContours, false, (ArchivingHandler) new ClassHandler(TransportContour.class));
            this.transportContours = listAdd;
            this.transportContours__is_initialized = true;
            this.nativeObject = init(this.line, this.transports, listAdd);
            return;
        }
        archive.add(getLine(), false, (Class<Line>) Line.class);
        archive.add((List) getTransports(), false, (ArchivingHandler) new ClassHandler(TransportThread.class));
        archive.add((List) getTransportContours(), false, (ArchivingHandler) new ClassHandler(TransportContour.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::Transport";
    }
}
