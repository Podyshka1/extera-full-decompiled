package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class SectionMetadata implements Serializable {
    private SectionData data;
    private boolean data__is_initialized;
    private TravelEstimation estimation;
    private boolean estimation__is_initialized;
    private int legIndex;
    private boolean legIndex__is_initialized;
    private NativeObject nativeObject;
    private List<SectionPaymentOption> paymentOptions;
    private boolean paymentOptions__is_initialized;
    private Weight weight;
    private boolean weight__is_initialized;

    private native SectionData getData__Native();

    private native TravelEstimation getEstimation__Native();

    private native int getLegIndex__Native();

    private native List<SectionPaymentOption> getPaymentOptions__Native();

    private native Weight getWeight__Native();

    private native NativeObject init(Weight weight, SectionData sectionData, TravelEstimation travelEstimation, int i, List<SectionPaymentOption> list);

    public static class SectionData implements Serializable {
        private Fitness fitness;
        private Taxi taxi;
        private Transfer transfer;
        private List<Transport> transports;
        private Wait wait;

        public static SectionData fromWait(Wait wait) {
            if (wait == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"wait\" cannot be null");
                return null;
            }
            SectionData sectionData = new SectionData();
            sectionData.wait = wait;
            return sectionData;
        }

        public static SectionData fromFitness(Fitness fitness) {
            if (fitness == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"fitness\" cannot be null");
                return null;
            }
            SectionData sectionData = new SectionData();
            sectionData.fitness = fitness;
            return sectionData;
        }

        public static SectionData fromTransfer(Transfer transfer) {
            if (transfer == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"transfer\" cannot be null");
                return null;
            }
            SectionData sectionData = new SectionData();
            sectionData.transfer = transfer;
            return sectionData;
        }

        public static SectionData fromTaxi(Taxi taxi) {
            if (taxi == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"taxi\" cannot be null");
                return null;
            }
            SectionData sectionData = new SectionData();
            sectionData.taxi = taxi;
            return sectionData;
        }

        public static SectionData fromTransports(List<Transport> list) {
            if (list == null) {
                f$$ExternalSyntheticBUOutline1.m178m("Variant value \"transports\" cannot be null");
                return null;
            }
            SectionData sectionData = new SectionData();
            sectionData.transports = list;
            return sectionData;
        }

        public Wait getWait() {
            return this.wait;
        }

        public Fitness getFitness() {
            return this.fitness;
        }

        public Transfer getTransfer() {
            return this.transfer;
        }

        public Taxi getTaxi() {
            return this.taxi;
        }

        public List<Transport> getTransports() {
            return this.transports;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.wait = (Wait) archive.add(this.wait, true, (Class<Wait>) Wait.class);
            this.fitness = (Fitness) archive.add(this.fitness, true, (Class<Fitness>) Fitness.class);
            this.transfer = (Transfer) archive.add(this.transfer, true, (Class<Transfer>) Transfer.class);
            this.taxi = (Taxi) archive.add(this.taxi, true, (Class<Taxi>) Taxi.class);
            this.transports = archive.add((List) this.transports, true, (ArchivingHandler) new ClassHandler(Transport.class));
        }
    }

    public SectionMetadata() {
        this.weight__is_initialized = false;
        this.data__is_initialized = false;
        this.estimation__is_initialized = false;
        this.legIndex__is_initialized = false;
        this.paymentOptions__is_initialized = false;
    }

    public SectionMetadata(Weight weight, SectionData sectionData, TravelEstimation travelEstimation, int i, List<SectionPaymentOption> list) {
        this.weight__is_initialized = false;
        this.data__is_initialized = false;
        this.estimation__is_initialized = false;
        this.legIndex__is_initialized = false;
        this.paymentOptions__is_initialized = false;
        if (weight == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"weight\" cannot be null");
            throw null;
        }
        if (sectionData == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"data\" cannot be null");
            throw null;
        }
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"paymentOptions\" cannot be null");
            throw null;
        }
        this.nativeObject = init(weight, sectionData, travelEstimation, i, list);
        this.weight = weight;
        this.weight__is_initialized = true;
        this.data = sectionData;
        this.data__is_initialized = true;
        this.estimation = travelEstimation;
        this.estimation__is_initialized = true;
        this.legIndex = i;
        this.legIndex__is_initialized = true;
        this.paymentOptions = list;
        this.paymentOptions__is_initialized = true;
    }

    private SectionMetadata(NativeObject nativeObject) {
        this.weight__is_initialized = false;
        this.data__is_initialized = false;
        this.estimation__is_initialized = false;
        this.legIndex__is_initialized = false;
        this.paymentOptions__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Weight getWeight() {
        try {
            if (!this.weight__is_initialized) {
                this.weight = getWeight__Native();
                this.weight__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.weight;
    }

    public synchronized SectionData getData() {
        try {
            if (!this.data__is_initialized) {
                this.data = getData__Native();
                this.data__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.data;
    }

    public synchronized TravelEstimation getEstimation() {
        try {
            if (!this.estimation__is_initialized) {
                this.estimation = getEstimation__Native();
                this.estimation__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.estimation;
    }

    public synchronized int getLegIndex() {
        try {
            if (!this.legIndex__is_initialized) {
                this.legIndex = getLegIndex__Native();
                this.legIndex__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.legIndex;
    }

    public synchronized List<SectionPaymentOption> getPaymentOptions() {
        try {
            if (!this.paymentOptions__is_initialized) {
                this.paymentOptions = getPaymentOptions__Native();
                this.paymentOptions__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.paymentOptions;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.weight = (Weight) archive.add(this.weight, false, (Class<Weight>) Weight.class);
            this.weight__is_initialized = true;
            this.data = (SectionData) archive.add(this.data, false, (Class<SectionData>) SectionData.class);
            this.data__is_initialized = true;
            this.estimation = (TravelEstimation) archive.add(this.estimation, true, (Class<TravelEstimation>) TravelEstimation.class);
            this.estimation__is_initialized = true;
            this.legIndex = archive.add(this.legIndex);
            this.legIndex__is_initialized = true;
            List<SectionPaymentOption> listAdd = archive.add((List) this.paymentOptions, false, (ArchivingHandler) new ClassHandler(SectionPaymentOption.class));
            this.paymentOptions = listAdd;
            this.paymentOptions__is_initialized = true;
            this.nativeObject = init(this.weight, this.data, this.estimation, this.legIndex, listAdd);
            return;
        }
        archive.add(getWeight(), false, (Class<Weight>) Weight.class);
        archive.add(getData(), false, (Class<SectionData>) SectionData.class);
        archive.add(getEstimation(), true, (Class<TravelEstimation>) TravelEstimation.class);
        archive.add(getLegIndex());
        archive.add((List) getPaymentOptions(), false, (ArchivingHandler) new ClassHandler(SectionPaymentOption.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::transport::masstransit::SectionMetadata";
    }
}
