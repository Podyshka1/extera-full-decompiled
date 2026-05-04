package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Uploader {
    private final BackendRegistry backendRegistry;
    private final ClientHealthMetricsStore clientHealthMetricsStore;
    private final Clock clock;
    private final Context context;
    private final EventStore eventStore;
    private final Executor executor;
    private final SynchronizationGuard guard;
    private final Clock uptimeClock;
    private final WorkScheduler workScheduler;

    public Uploader(Context context, BackendRegistry backendRegistry, EventStore eventStore, WorkScheduler workScheduler, Executor executor, SynchronizationGuard synchronizationGuard, Clock clock, Clock clock2, ClientHealthMetricsStore clientHealthMetricsStore) {
        this.context = context;
        this.backendRegistry = backendRegistry;
        this.eventStore = eventStore;
        this.workScheduler = workScheduler;
        this.executor = executor;
        this.guard = synchronizationGuard;
        this.clock = clock;
        this.uptimeClock = clock2;
        this.clientHealthMetricsStore = clientHealthMetricsStore;
    }

    boolean isNetworkAvailable() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public void upload(final TransportContext transportContext, final int i, final Runnable runnable) {
        this.executor.execute(new Runnable() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Uploader.$r8$lambda$eWdkU2LmywL4gF880jwxOwLkJfI(this.f$0, transportContext, i, runnable);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$eWdkU2LmywL4gF880jwxOwLkJfI(final Uploader uploader, final TransportContext transportContext, final int i, Runnable runnable) {
        uploader.getClass();
        try {
            try {
                SynchronizationGuard synchronizationGuard = uploader.guard;
                final EventStore eventStore = uploader.eventStore;
                Objects.requireNonNull(eventStore);
                synchronizationGuard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader$$ExternalSyntheticLambda1
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        return Integer.valueOf(eventStore.cleanUp());
                    }
                });
                if (!uploader.isNetworkAvailable()) {
                    uploader.guard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader$$ExternalSyntheticLambda2
                        @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                        public final Object execute() {
                            return Uploader.$r8$lambda$YYSBWTuDkulYc4ll_Q3G1rbN9O8(this.f$0, transportContext, i);
                        }
                    });
                } else {
                    uploader.logAndUpdateState(transportContext, i);
                }
                runnable.run();
            } catch (SynchronizationException unused) {
                uploader.workScheduler.schedule(transportContext, i + 1);
                runnable.run();
            }
        } catch (Throwable th) {
            runnable.run();
            throw th;
        }
    }

    public static /* synthetic */ Object $r8$lambda$YYSBWTuDkulYc4ll_Q3G1rbN9O8(Uploader uploader, TransportContext transportContext, int i) {
        uploader.workScheduler.schedule(transportContext, i + 1);
        return null;
    }

    public BackendResponse logAndUpdateState(final TransportContext transportContext, int i) {
        BackendResponse backendResponseSend;
        TransportBackend transportBackend = this.backendRegistry.get(transportContext.getBackendName());
        BackendResponse backendResponseM296ok = BackendResponse.m296ok(0L);
        final long j = 0;
        while (((Boolean) this.guard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader$$ExternalSyntheticLambda3
            @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
            public final Object execute() {
                return Boolean.valueOf(this.f$0.eventStore.hasPendingEventsFor(transportContext));
            }
        })).booleanValue()) {
            final Iterable iterable = (Iterable) this.guard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader$$ExternalSyntheticLambda4
                @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                public final Object execute() {
                    return this.f$0.eventStore.loadBatch(transportContext);
                }
            });
            if (!iterable.iterator().hasNext()) {
                return backendResponseM296ok;
            }
            if (transportBackend == null) {
                Logging.m297d("Uploader", "Unknown backend for %s, deleting event batch for it...", transportContext);
                backendResponseSend = BackendResponse.fatalError();
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((PersistedEvent) it.next()).getEvent());
                }
                if (transportContext.shouldUploadClientHealthMetrics()) {
                    arrayList.add(createMetricsEvent(transportBackend));
                }
                backendResponseSend = transportBackend.send(BackendRequest.builder().setEvents(arrayList).setExtras(transportContext.getExtras()).build());
            }
            backendResponseM296ok = backendResponseSend;
            if (backendResponseM296ok.getStatus() == BackendResponse.Status.TRANSIENT_ERROR) {
                final TransportContext transportContext2 = transportContext;
                this.guard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader$$ExternalSyntheticLambda5
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        return Uploader.$r8$lambda$KczLz_Q_NejuT7e4eizXNubl_f4(this.f$0, iterable, transportContext2, j);
                    }
                });
                this.workScheduler.schedule(transportContext2, i + 1, true);
                return backendResponseM296ok;
            }
            TransportContext transportContext3 = transportContext;
            this.guard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader$$ExternalSyntheticLambda6
                @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                public final Object execute() {
                    return Uploader.$r8$lambda$WsHpQpWMGUydVPnrAR64q25St1g(this.f$0, iterable);
                }
            });
            if (backendResponseM296ok.getStatus() == BackendResponse.Status.OK) {
                long jMax = Math.max(j, backendResponseM296ok.getNextRequestWaitMillis());
                if (transportContext3.shouldUploadClientHealthMetrics()) {
                    this.guard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader$$ExternalSyntheticLambda7
                        @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                        public final Object execute() {
                            return Uploader.m2816$r8$lambda$S382DjgDn_yvJnuiSFvtp3hSXI(this.f$0);
                        }
                    });
                }
                j = jMax;
            } else if (backendResponseM296ok.getStatus() == BackendResponse.Status.INVALID_PAYLOAD) {
                final HashMap map = new HashMap();
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    String transportName = ((PersistedEvent) it2.next()).getEvent().getTransportName();
                    if (!map.containsKey(transportName)) {
                        map.put(transportName, 1);
                    } else {
                        map.put(transportName, Integer.valueOf(((Integer) map.get(transportName)).intValue() + 1));
                    }
                }
                this.guard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader$$ExternalSyntheticLambda8
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        return Uploader.$r8$lambda$agWmeBeuVmAYcPatmWqsXMsSeBk(this.f$0, map);
                    }
                });
            }
            transportContext = transportContext3;
        }
        final TransportContext transportContext4 = transportContext;
        this.guard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader$$ExternalSyntheticLambda9
            @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
            public final Object execute() {
                return Uploader.$r8$lambda$aH8iv_GA6F4qxPrDvFygQzqqflI(this.f$0, transportContext4, j);
            }
        });
        return backendResponseM296ok;
    }

    public static /* synthetic */ Object $r8$lambda$KczLz_Q_NejuT7e4eizXNubl_f4(Uploader uploader, Iterable iterable, TransportContext transportContext, long j) {
        uploader.eventStore.recordFailure(iterable);
        uploader.eventStore.recordNextCallTime(transportContext, uploader.clock.getTime() + j);
        return null;
    }

    public static /* synthetic */ Object $r8$lambda$WsHpQpWMGUydVPnrAR64q25St1g(Uploader uploader, Iterable iterable) {
        uploader.eventStore.recordSuccess(iterable);
        return null;
    }

    /* JADX INFO: renamed from: $r8$lambda$S382DjgDn_y-vJnuiSFvtp3hSXI, reason: not valid java name */
    public static /* synthetic */ Object m2816$r8$lambda$S382DjgDn_yvJnuiSFvtp3hSXI(Uploader uploader) {
        uploader.clientHealthMetricsStore.resetClientMetrics();
        return null;
    }

    public static /* synthetic */ Object $r8$lambda$agWmeBeuVmAYcPatmWqsXMsSeBk(Uploader uploader, Map map) {
        uploader.getClass();
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            uploader.clientHealthMetricsStore.recordLogEventDropped(((Integer) r0.getValue()).intValue(), LogEventDropped.Reason.INVALID_PAYLOD, (String) ((Map.Entry) it.next()).getKey());
        }
        return null;
    }

    public static /* synthetic */ Object $r8$lambda$aH8iv_GA6F4qxPrDvFygQzqqflI(Uploader uploader, TransportContext transportContext, long j) {
        uploader.eventStore.recordNextCallTime(transportContext, uploader.clock.getTime() + j);
        return null;
    }

    public EventInternal createMetricsEvent(TransportBackend transportBackend) {
        SynchronizationGuard synchronizationGuard = this.guard;
        final ClientHealthMetricsStore clientHealthMetricsStore = this.clientHealthMetricsStore;
        Objects.requireNonNull(clientHealthMetricsStore);
        return transportBackend.decorate(EventInternal.builder().setEventMillis(this.clock.getTime()).setUptimeMillis(this.uptimeClock.getTime()).setTransportName("GDT_CLIENT_METRICS").setEncodedPayload(new EncodedPayload(Encoding.m295of("proto"), ((ClientMetrics) synchronizationGuard.runCriticalSection(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader$$ExternalSyntheticLambda10
            @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
            public final Object execute() {
                return clientHealthMetricsStore.loadClientMetrics();
            }
        })).toByteArray())).build());
    }
}
