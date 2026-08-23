package com.exteragram.messenger.export.controllers;

import android.os.Environment;
import android.util.Log;
import com.exteragram.messenger.export.ExportSettings;
import com.exteragram.messenger.export.api.ApiWrap$ContactsList;
import com.exteragram.messenger.export.api.ApiWrap$DialogInfo;
import com.exteragram.messenger.export.api.ApiWrap$DialogsInfo;
import com.exteragram.messenger.export.api.ApiWrap$DownloadProgress;
import com.exteragram.messenger.export.api.ApiWrap$ExportPersonalInfo;
import com.exteragram.messenger.export.api.ApiWrap$File;
import com.exteragram.messenger.export.api.ApiWrap$MessagesSlice;
import com.exteragram.messenger.export.api.ApiWrap$SessionsList;
import com.exteragram.messenger.export.api.ApiWrap$StoriesSlice;
import com.exteragram.messenger.export.api.ApiWrap$UserpicsInfo;
import com.exteragram.messenger.export.controllers.ExportController;
import com.exteragram.messenger.export.controllers.ExportRequestsController;
import com.exteragram.messenger.export.output.AbstractWriter;
import com.exteragram.messenger.export.output.OutputFile;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.function.ToIntFunction;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.tgnet.TLRPC;
import p022j$.time.Instant;
import p022j$.util.Collection;
import p022j$.util.DesugarArrays;

/* JADX INFO: loaded from: classes4.dex */
public class ExportController extends BaseController {
    public static final int CONTACTS_NOTIFICATION;
    public static final int DIALOGS_NOTIFICATION;
    public static final int FINISH_NOTIFICATION;
    public static final int OTHER_DATA_NOTIFICATION;
    public static final int PERSONAL_INFO_NOTIFICATION;
    public static final int SESSIONS_NOTIFICATION;
    public static final int STORIES_NOTIFICATION;
    public static final int USERPICS_NOTIFICATION;
    private static int defaultId;
    private int _dialogIndex;
    private ApiWrap$DialogsInfo _dialogsInfo;
    private ProcessingState.Step _lastProcessingStep;
    private int _messagesCount;
    private int _messagesWritten;
    private ExportSettings _settings;
    private ProcessingState _state;
    private final OutputFile.Stats _stats;
    private int _stepIndex;
    private final ArrayList _steps;
    private int _storiesCount;
    private int _storiesWritten;
    private int[] _substepsInStep;
    private int _substepsPassed;
    private int _substepsTotal;
    private int _userpicsCount;
    private int _userpicsWritten;
    private AbstractWriter _writer;
    private final int currAcc;
    public static volatile DispatchQueue exportQueue = new DispatchQueue("exportQueue");
    private static final ExportController[] Instance = new ExportController[16];
    public static final int INITIALIZATING_NOTIFICATION = 6666;
    public static final int DIALOGS_LIST_NOTIFICATION = 6666;

    public static class ProcessingState {
        public String bytesName;
        public String entityName;
        public Step step = Step.Initializing;
        public int substepsPassed = 0;
        public int substepsNow = 0;
        public int substepsTotal = 0;
        public EntityType entityType = EntityType.Other;
        public int entityIndex = 0;
        public int entityCount = 0;
        public int itemIndex = 0;
        public int itemCount = 0;
        public long bytesRandomId = 0;
        public long bytesLoaded = 0;
        public long bytesCount = 0;

        public enum EntityType {
            Chat,
            SavedMessages,
            RepliesMessages,
            VerifyCodes,
            Other
        }

        public enum Step {
            Initializing,
            DialogsList,
            PersonalInfo,
            Userpics,
            Stories,
            Contacts,
            Sessions,
            OtherData,
            Dialogs
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$XpHL9OJ9E0-jsaOwD7m1Z3whHP0, reason: not valid java name */
    public static /* synthetic */ void m2389$r8$lambda$XpHL9OJ9E0jsaOwD7m1Z3whHP0(ProcessingState processingState) {
    }

    static {
        int i = 6666 + 1;
        PERSONAL_INFO_NOTIFICATION = i;
        USERPICS_NOTIFICATION = i + 1;
        STORIES_NOTIFICATION = i + 2;
        CONTACTS_NOTIFICATION = i + 3;
        SESSIONS_NOTIFICATION = i + 4;
        OTHER_DATA_NOTIFICATION = i + 5;
        DIALOGS_NOTIFICATION = i + 6;
        defaultId = i + 8;
        FINISH_NOTIFICATION = i + 7;
    }

    public ExportController(int i) {
        super(i);
        this._steps = new ArrayList();
        this._stats = new OutputFile.Stats();
        this._stepIndex = -1;
        this._substepsTotal = 0;
        this._substepsPassed = 0;
        this._dialogIndex = -1;
        this._lastProcessingStep = ProcessingState.Step.Initializing;
        this._messagesWritten = 0;
        this._messagesCount = 0;
        this._userpicsWritten = 0;
        this._userpicsCount = 0;
        this._storiesWritten = 0;
        this._storiesCount = 0;
        this.currAcc = i;
    }

    public static ExportController getInstance(int i) {
        ExportController exportController;
        ExportController[] exportControllerArr = Instance;
        ExportController exportController2 = exportControllerArr[i];
        if (exportController2 != null) {
            return exportController2;
        }
        synchronized (ExportController.class) {
            try {
                exportController = exportControllerArr[i];
                if (exportController == null) {
                    exportController = new ExportController(i);
                    exportControllerArr[i] = exportController;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return exportController;
    }

    private static String NormalizePath(ExportSettings exportSettings) {
        String[] list;
        String str;
        File file = new File(String.valueOf(new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), "exteraGram")));
        String absolutePath = file.getAbsolutePath();
        if (!absolutePath.endsWith("/")) {
            absolutePath = absolutePath + "/";
        }
        if (!file.exists() || (list = file.list()) == null || list.length == 0) {
            return absolutePath;
        }
        String str2 = new SimpleDateFormat("yyyy-MM-dd_HH_mm").format(Calendar.getInstance().getTime());
        StringBuilder sb = new StringBuilder();
        sb.append(absolutePath);
        if (exportSettings.onlySinglePeer()) {
            str = "ChatExport_" + str2;
        } else {
            str = "DataExport_" + str2;
        }
        sb.append(str);
        return sb.toString();
    }

    public void startExport(final ExportSettings exportSettings) {
        exportQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startExport$0(exportSettings);
            }
        });
    }

    /* JADX INFO: renamed from: startExportInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$startExport$0(ExportSettings exportSettings) {
        String str;
        ExportSettings exportSettings2 = this._settings;
        if (exportSettings2 != null && (str = exportSettings2.path) != null && !str.isEmpty()) {
            showErrorBulletin("path is not empty! aborting");
            return;
        }
        this._settings = exportSettings;
        exportSettings.path = NormalizePath(exportSettings);
        this._writer = AbstractWriter.CreateWriter(this._settings.format);
        fillExportSteps();
        exportNext();
    }

    public void fillExportSteps() {
        this._steps.add(ProcessingState.Step.Initializing);
        if (!this._settings.onlySinglePeer()) {
            this._steps.add(ProcessingState.Step.DialogsList);
        }
        if ((this._settings.types & 1) != 0) {
            this._steps.add(ProcessingState.Step.PersonalInfo);
        }
        if ((this._settings.types & 2) != 0) {
            this._steps.add(ProcessingState.Step.Userpics);
        }
        if ((this._settings.types & 2048) != 0) {
            this._steps.add(ProcessingState.Step.Stories);
        }
        if ((this._settings.types & 4) != 0) {
            this._steps.add(ProcessingState.Step.Contacts);
        }
        if ((this._settings.types & 8) != 0) {
            this._steps.add(ProcessingState.Step.Sessions);
        }
        if ((this._settings.types & 16) != 0) {
            this._steps.add(ProcessingState.Step.OtherData);
        }
        if (this._settings.onlySinglePeer()) {
            return;
        }
        this._steps.add(ProcessingState.Step.Dialogs);
    }

    private void exportNext() {
        int i = this._stepIndex + 1;
        this._stepIndex = i;
        if (i >= this._steps.size()) {
            if (this._writer.finish().isSuccess()) {
                ExportRequestsController.getInstance(this.currAcc).invokeFinish(false, new Runnable() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.setFinishedState();
                    }
                });
                Log.i("exteraGram", "finished Export!");
            }
            return;
        }
        switch ((ProcessingState.Step) this._steps.get(this._stepIndex)) {
            case Initializing:
                initialize();
                break;
            case DialogsList:
                collectDialogsList();
                break;
            case PersonalInfo:
                exportPersonalInfo();
                break;
            case Userpics:
                exportUserpics();
                break;
            case Stories:
                exportStories();
                break;
            case Contacts:
                exportContacts();
                break;
            case Sessions:
                exportSessions();
                break;
            case OtherData:
                exportOtherData();
                break;
            case Dialogs:
                exportDialogs();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFinishedState() {
        setState(new FinishedState(this._writer.mainFilePath(), this._stats.filesCount(), this._stats.bytesCount()));
    }

    private void initialize() {
        setState(new ProcessingState());
        ExportRequestsController.getInstance(this.currAcc).startExport(this._settings, this._stats, new Utilities.Callback() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda18
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.initialized((ExportRequestsController.StartInfo) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initialized(ExportRequestsController.StartInfo startInfo) {
        if (this._writer.start(this._settings, this._stats).isSuccess()) {
            fillSubstepsInSteps(startInfo);
            exportNext();
        }
    }

    private void collectDialogsList() {
        setState(stateDialogsList(0));
        ExportRequestsController.getInstance(this.currAcc).requestDialogsList(new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda19
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.lambda$collectDialogsList$1((Integer) obj);
            }
        }, new Utilities.Callback() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda20
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$collectDialogsList$2((ApiWrap$DialogsInfo) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$collectDialogsList$1(Integer num) {
        if (num.intValue() > 0) {
            setState(stateDialogsList(num.intValue() - 1));
        }
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$collectDialogsList$2(ApiWrap$DialogsInfo apiWrap$DialogsInfo) {
        this._dialogsInfo = apiWrap$DialogsInfo;
        exportNext();
    }

    private void exportPersonalInfo() {
        setState(statePersonalInfo());
        ExportRequestsController.getInstance(this.currAcc).requestPersonalInfo(new Utilities.Callback() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$exportPersonalInfo$3((ApiWrap$ExportPersonalInfo) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$exportPersonalInfo$3(ApiWrap$ExportPersonalInfo apiWrap$ExportPersonalInfo) {
        if (this._writer.writePersonal(apiWrap$ExportPersonalInfo).isSuccess()) {
            exportNext();
        }
    }

    private ProcessingState statePersonalInfo() {
        return prepareState(ProcessingState.Step.PersonalInfo, new Utilities.Callback() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                ExportController.m2389$r8$lambda$XpHL9OJ9E0jsaOwD7m1Z3whHP0((ExportController.ProcessingState) obj);
            }
        });
    }

    private void exportUserpics() {
        ExportRequestsController.getInstance(this.currAcc).requestUserpics(new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda13
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.lambda$exportUserpics$5((ApiWrap$UserpicsInfo) obj);
            }
        }, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda14
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.lambda$exportUserpics$6((ApiWrap$DownloadProgress) obj);
            }
        }, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda15
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.lambda$exportUserpics$7((ArrayList) obj);
            }
        }, new Runnable() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$exportUserpics$8();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$exportUserpics$5(ApiWrap$UserpicsInfo apiWrap$UserpicsInfo) {
        if (!this._writer.writeUserpicsStart(apiWrap$UserpicsInfo).isSuccess()) {
            return Boolean.FALSE;
        }
        this._userpicsWritten = 0;
        this._userpicsCount = apiWrap$UserpicsInfo.count();
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$exportUserpics$6(ApiWrap$DownloadProgress apiWrap$DownloadProgress) {
        setState(stateUserpics(apiWrap$DownloadProgress));
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$exportUserpics$7(ArrayList arrayList) {
        if (!this._writer.writeUserpicsSlice(arrayList).isSuccess()) {
            return Boolean.FALSE;
        }
        this._userpicsWritten += arrayList.size();
        setState(stateUserpics(new ApiWrap$DownloadProgress()));
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$exportUserpics$8() {
        if (this._writer.writeUserpicsEnd().isSuccess()) {
            exportNext();
        }
    }

    private ProcessingState stateUserpics(final ApiWrap$DownloadProgress apiWrap$DownloadProgress) {
        return prepareState(ProcessingState.Step.Userpics, new Utilities.Callback() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda25
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$stateUserpics$9(apiWrap$DownloadProgress, (ExportController.ProcessingState) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stateUserpics$9(ApiWrap$DownloadProgress apiWrap$DownloadProgress, ProcessingState processingState) {
        int iItemIndex = this._userpicsWritten + apiWrap$DownloadProgress.itemIndex();
        processingState.entityIndex = iItemIndex;
        processingState.entityCount = Math.max(this._userpicsCount, iItemIndex);
        processingState.bytesRandomId = apiWrap$DownloadProgress.randomId();
        if (!apiWrap$DownloadProgress.path().isEmpty()) {
            processingState.bytesName = apiWrap$DownloadProgress.path().substring(apiWrap$DownloadProgress.path().lastIndexOf(47) + 1);
        }
        processingState.bytesLoaded = apiWrap$DownloadProgress.ready();
        processingState.bytesCount = apiWrap$DownloadProgress.total();
    }

    private void exportStories() {
        ExportRequestsController.getInstance(this.currAcc).requestStories(new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.lambda$exportStories$10((Integer) obj);
            }
        }, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.lambda$exportStories$11((ApiWrap$DownloadProgress) obj);
            }
        }, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return this.f$0.lambda$exportStories$12((ApiWrap$StoriesSlice) obj);
            }
        }, new Runnable() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$exportStories$13();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$exportStories$10(Integer num) {
        if (!this._writer.writeStoriesStart(num.intValue()).isSuccess()) {
            return Boolean.FALSE;
        }
        this._storiesWritten = 0;
        this._storiesCount = num.intValue();
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$exportStories$11(ApiWrap$DownloadProgress apiWrap$DownloadProgress) {
        setState(stateStories(apiWrap$DownloadProgress));
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$exportStories$12(ApiWrap$StoriesSlice apiWrap$StoriesSlice) {
        if (!this._writer.writeStoriesSlice(apiWrap$StoriesSlice).isSuccess()) {
            return Boolean.FALSE;
        }
        this._storiesWritten += apiWrap$StoriesSlice.list.size();
        setState(stateStories(new ApiWrap$DownloadProgress()));
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$exportStories$13() {
        if (this._writer.writeStoriesEnd().isSuccess()) {
            exportNext();
        }
    }

    private ProcessingState stateStories(final ApiWrap$DownloadProgress apiWrap$DownloadProgress) {
        return prepareState(ProcessingState.Step.Stories, new Utilities.Callback() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda26
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$stateStories$14(apiWrap$DownloadProgress, (ExportController.ProcessingState) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stateStories$14(ApiWrap$DownloadProgress apiWrap$DownloadProgress, ProcessingState processingState) {
        int iItemIndex = this._storiesWritten + apiWrap$DownloadProgress.itemIndex();
        processingState.entityIndex = iItemIndex;
        processingState.entityCount = Math.max(this._storiesCount, iItemIndex);
        processingState.bytesRandomId = apiWrap$DownloadProgress.randomId();
        if (!apiWrap$DownloadProgress.path().isEmpty()) {
            processingState.bytesName = apiWrap$DownloadProgress.path().substring(apiWrap$DownloadProgress.path().lastIndexOf(47) + 1);
        }
        processingState.bytesLoaded = apiWrap$DownloadProgress.ready();
        processingState.bytesCount = apiWrap$DownloadProgress.total();
    }

    private void exportContacts() {
        setState(prepareState(ProcessingState.Step.Contacts, null));
        ExportRequestsController.getInstance(this.currAcc).requestContacts(new Utilities.Callback() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$exportContacts$15((ApiWrap$ContactsList) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$exportContacts$15(ApiWrap$ContactsList apiWrap$ContactsList) {
        if (this._writer.writeContactsList(apiWrap$ContactsList).isSuccess()) {
            exportNext();
        }
    }

    private ProcessingState stateDialogsList(final int i) {
        return prepareState(ProcessingState.Step.DialogsList, new Utilities.Callback() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$stateDialogsList$16(i, (ExportController.ProcessingState) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stateDialogsList$16(int i, ProcessingState processingState) {
        processingState.entityIndex = i;
        processingState.entityCount = Math.max(i, substepsInStep(ProcessingState.Step.Dialogs));
    }

    private ProcessingState prepareState(ProcessingState.Step step, Utilities.Callback callback) {
        ProcessingState.Step step2 = this._lastProcessingStep;
        if (step != step2) {
            this._substepsPassed += substepsInStep(step2);
            this._lastProcessingStep = step;
        }
        ProcessingState processingState = new ProcessingState();
        if (callback != null) {
            callback.run(processingState);
        }
        processingState.step = step;
        processingState.substepsPassed = this._substepsPassed;
        processingState.substepsNow = substepsInStep(this._lastProcessingStep);
        processingState.substepsTotal = this._substepsTotal;
        return processingState;
    }

    private int substepsInStep(ProcessingState.Step step) {
        return this._substepsInStep[step.ordinal()];
    }

    private void fillSubstepsInSteps(ExportRequestsController.StartInfo startInfo) {
        int[] iArr = new int[ProcessingState.Step.values().length];
        iArr[ProcessingState.Step.Initializing.ordinal()] = 1;
        if ((this._settings.types & 2016) != 0) {
            iArr[ProcessingState.Step.DialogsList.ordinal()] = 1;
        }
        if ((this._settings.types & 32) != 0) {
            iArr[ProcessingState.Step.PersonalInfo.ordinal()] = 1;
        }
        if ((this._settings.types & 2) != 0) {
            iArr[ProcessingState.Step.Userpics.ordinal()] = 1;
        }
        if ((this._settings.types & 2048) != 0) {
            iArr[ProcessingState.Step.Stories.ordinal()] = 1;
        }
        if ((this._settings.types & 4) != 0) {
            iArr[ProcessingState.Step.Contacts.ordinal()] = 1;
        }
        if ((this._settings.types & 8) != 0) {
            iArr[ProcessingState.Step.Sessions.ordinal()] = 1;
        }
        if ((this._settings.types & 16) != 0) {
            iArr[ProcessingState.Step.OtherData.ordinal()] = 1;
        }
        if ((this._settings.types & 2016) != 0) {
            iArr[ProcessingState.Step.Dialogs.ordinal()] = startInfo.dialogsCount;
        }
        this._substepsInStep = iArr;
        this._substepsTotal = DesugarArrays.stream(iArr).sum();
    }

    private void setState(final ProcessingState processingState) {
        final int i;
        if (stopped()) {
            return;
        }
        if (processingState instanceof FinishedState) {
            i = FINISH_NOTIFICATION;
        } else {
            switch (processingState.step) {
                case Initializing:
                    i = INITIALIZATING_NOTIFICATION;
                    break;
                case DialogsList:
                    i = DIALOGS_LIST_NOTIFICATION;
                    break;
                case PersonalInfo:
                    i = PERSONAL_INFO_NOTIFICATION;
                    break;
                case Userpics:
                    i = USERPICS_NOTIFICATION;
                    break;
                case Stories:
                    i = STORIES_NOTIFICATION;
                    break;
                case Contacts:
                    i = CONTACTS_NOTIFICATION;
                    break;
                case Sessions:
                    i = SESSIONS_NOTIFICATION;
                    break;
                case OtherData:
                    i = OTHER_DATA_NOTIFICATION;
                    break;
                case Dialogs:
                    i = DIALOGS_NOTIFICATION;
                    break;
                default:
                    throw new IncompatibleClassChangeError();
            }
        }
        if (i != -1) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setState$17(i, processingState);
                }
            });
        }
        this._state = processingState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setState$17(int i, ProcessingState processingState) {
        NotificationCenter.getInstance(this.currAcc).lambda$postNotificationNameOnUIThread$1(i, processingState);
    }

    private boolean stopped() {
        return this._state instanceof FinishedState;
    }

    private void exportDialogs() {
        if (this._writer.writeDialogsStart(this._dialogsInfo).isSuccess()) {
            exportNextDialog();
        }
    }

    private void exportSessions() {
        setState(prepareState(ProcessingState.Step.Sessions, null));
        ExportRequestsController.getInstance(this.currAcc).requestSessions(new Utilities.Callback() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$exportSessions$18((ApiWrap$SessionsList) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$exportSessions$18(ApiWrap$SessionsList apiWrap$SessionsList) {
        if (this._writer.writeSessionsList(apiWrap$SessionsList).isSuccess()) {
            exportNext();
        }
    }

    private void exportOtherData() {
        setState(prepareState(ProcessingState.Step.OtherData, null));
        ExportRequestsController.getInstance(this.currAcc).requestOtherData("lists/other_data.json", new Utilities.Callback() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$exportOtherData$19((ApiWrap$File) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$exportOtherData$19(ApiWrap$File apiWrap$File) {
        if (this._writer.writeOtherData(apiWrap$File).isSuccess()) {
            exportNext();
        }
    }

    private void exportNextDialog() {
        int i = this._dialogIndex + 1;
        this._dialogIndex = i;
        final ApiWrap$DialogInfo itemAt = this._dialogsInfo.getItemAt(i);
        if (itemAt != null) {
            ExportRequestsController.getInstance(this.currAcc).requestMessages(itemAt, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return this.f$0.lambda$exportNextDialog$21(itemAt, (ApiWrap$DialogInfo) obj);
                }
            }, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return this.f$0.lambda$exportNextDialog$22((ApiWrap$DownloadProgress) obj);
                }
            }, new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return this.f$0.lambda$exportNextDialog$23((ApiWrap$MessagesSlice) obj);
                }
            }, new Runnable() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$exportNextDialog$24();
                }
            });
        } else if (this._writer.writeDialogsEnd().isSuccess()) {
            exportNext();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$exportNextDialog$21(ApiWrap$DialogInfo apiWrap$DialogInfo, ApiWrap$DialogInfo apiWrap$DialogInfo2) {
        if (!this._writer.writeDialogStart(apiWrap$DialogInfo).isSuccess()) {
            return Boolean.FALSE;
        }
        this._messagesWritten = 0;
        this._messagesCount = Collection.EL.stream(apiWrap$DialogInfo2.messagesCountPerSplit).mapToInt(new ToIntFunction() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda27
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((Integer) obj).intValue();
            }
        }).sum();
        setState(stateDialogs(new ApiWrap$DownloadProgress()));
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$exportNextDialog$22(ApiWrap$DownloadProgress apiWrap$DownloadProgress) {
        setState(stateDialogs(apiWrap$DownloadProgress));
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$exportNextDialog$23(ApiWrap$MessagesSlice apiWrap$MessagesSlice) {
        if (!this._writer.writeDialogSlice(apiWrap$MessagesSlice).isSuccess()) {
            return Boolean.FALSE;
        }
        this._messagesWritten += apiWrap$MessagesSlice.list.size();
        setState(stateDialogs(new ApiWrap$DownloadProgress()));
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$exportNextDialog$24() {
        if (this._writer.writeDialogEnd().isSuccess()) {
            exportNextDialog();
        }
    }

    private void fillMessagesState(ProcessingState processingState, ApiWrap$DialogsInfo apiWrap$DialogsInfo, int i, ApiWrap$DownloadProgress apiWrap$DownloadProgress) {
        ApiWrap$DialogInfo itemAt = apiWrap$DialogsInfo.getItemAt(i);
        processingState.entityIndex = i;
        processingState.entityCount = apiWrap$DialogsInfo.chats.size() + apiWrap$DialogsInfo.left.size();
        processingState.entityName = itemAt.name;
        int i2 = C10921.f283x410af476[itemAt.type.ordinal()];
        if (i2 == 1) {
            processingState.entityType = ProcessingState.EntityType.SavedMessages;
        } else if (i2 == 2) {
            processingState.entityType = ProcessingState.EntityType.RepliesMessages;
        } else if (i2 == 3) {
            processingState.entityType = ProcessingState.EntityType.VerifyCodes;
        } else {
            processingState.entityType = ProcessingState.EntityType.Chat;
        }
        int iItemIndex = this._messagesWritten + apiWrap$DownloadProgress.itemIndex();
        processingState.itemIndex = iItemIndex;
        processingState.itemCount = Math.max(this._messagesCount, iItemIndex);
        processingState.bytesRandomId = apiWrap$DownloadProgress.randomId();
        if (!apiWrap$DownloadProgress.path().isEmpty()) {
            processingState.bytesName = apiWrap$DownloadProgress.path().substring(apiWrap$DownloadProgress.path().lastIndexOf(47) + 1);
        }
        processingState.bytesLoaded = apiWrap$DownloadProgress.ready();
        processingState.bytesCount = apiWrap$DownloadProgress.total();
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.export.controllers.ExportController$1 */
    static /* synthetic */ class C10921 {

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$export$api$ApiWrap$DialogInfo$Type */
        static final /* synthetic */ int[] f283x410af476;

        static {
            int[] iArr = new int[ApiWrap$DialogInfo.Type.values().length];
            f283x410af476 = iArr;
            try {
                iArr[ApiWrap$DialogInfo.Type.Self.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f283x410af476[ApiWrap$DialogInfo.Type.Replies.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f283x410af476[ApiWrap$DialogInfo.Type.VerifyCodes.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private ProcessingState stateDialogs(final ApiWrap$DownloadProgress apiWrap$DownloadProgress) {
        return prepareState(ProcessingState.Step.Dialogs, new Utilities.Callback() { // from class: com.exteragram.messenger.export.controllers.ExportController$$ExternalSyntheticLambda24
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$stateDialogs$25(apiWrap$DownloadProgress, (ExportController.ProcessingState) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stateDialogs$25(ApiWrap$DownloadProgress apiWrap$DownloadProgress, ProcessingState processingState) {
        fillMessagesState(processingState, this._dialogsInfo, this._dialogIndex, apiWrap$DownloadProgress);
    }

    private static class FinishedState extends ProcessingState {
        public long bytesCount;
        public int filesCount;
        public String path;

        public FinishedState(String str, int i, long j) {
            this.path = str;
            this.filesCount = i;
            this.bytesCount = j;
        }
    }

    private static void showErrorBulletin(String str) {
        BulletinFactory.global().createErrorBulletin(str);
    }

    public static void showError(TLRPC.TL_error tL_error) {
        String string;
        if (tL_error.text.contains("TAKEOUT_INVALID")) {
            showErrorBulletin(LocaleController.getString(C2888R.string.ExportInvalid));
            return;
        }
        if (tL_error.text.startsWith("TAKEOUT_INIT_DELAY_")) {
            String str = tL_error.text;
            Integer num = Utilities.parseInt((CharSequence) str.substring(str.lastIndexOf("_")));
            Instant instantNow = Instant.now();
            instantNow.plusSeconds(num.intValue());
            if (num.intValue() / 3600 <= 0) {
                string = LocaleController.getString(C2888R.string.ExportDelayLessThanHour);
            } else {
                string = LocaleController.getString(C2888R.string.Hours_other);
            }
            showErrorBulletin(LocaleController.formatString(C2888R.string.ExportDelay, string, instantNow.toString()));
            return;
        }
        showErrorBulletin("API error happened! Error text: " + tL_error.text);
    }
}
