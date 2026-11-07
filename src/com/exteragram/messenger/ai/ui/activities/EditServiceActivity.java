package com.exteragram.messenger.ai.ui.activities;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import androidx.core.util.Consumer;
import androidx.core.view.WindowInsetsCompat;
import com.exteragram.messenger.ai.AiConfig;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.ai.data.Service;
import com.exteragram.messenger.ai.data.Suggestions;
import com.exteragram.messenger.ai.network.Client;
import com.exteragram.messenger.ai.network.GenerationCallback;
import com.exteragram.messenger.ai.ui.activities.EditServiceActivity;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.utils.ExtensionsKt;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.google.android.gms.cast.MediaError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.EditTextCell;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b>\u0018\u0000 y2\u00020\u0001:\u0004xyz{B\u0015\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020&H\u0016J(\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u00182\u0006\u0010.\u001a\u00020\u00182\u0006\u0010/\u001a\u00020\u0018H\u0016J\u0010\u00100\u001a\u00020(2\u0006\u00101\u001a\u000202H\u0014J\b\u00103\u001a\u00020\u000bH\u0016J\u001e\u00104\u001a\u00020+2\f\u00105\u001a\b\u0012\u0004\u0012\u000207062\u0006\u00108\u001a\u000209H\u0014J0\u0010:\u001a\u00020+2\u0006\u0010;\u001a\u0002072\u0006\u0010'\u001a\u00020(2\u0006\u0010<\u001a\u00020\u00182\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020>H\u0014J\b\u0010@\u001a\u00020+H\u0016J\b\u0010A\u001a\u00020+H\u0016J\b\u0010B\u001a\u00020+H\u0016J\u0018\u0010C\u001a\u00020+2\u0006\u0010D\u001a\u00020\u00132\u0006\u0010E\u001a\u00020\u0013H\u0016J\u0010\u0010F\u001a\u00020+2\u0006\u00101\u001a\u000202H\u0002J\b\u0010G\u001a\u00020+H\u0002J\b\u0010H\u001a\u00020+H\u0002J\u0010\u0010I\u001a\u00020+2\u0006\u0010J\u001a\u00020\u0013H\u0002J\u0010\u0010K\u001a\u00020+2\u0006\u0010L\u001a\u00020\u0018H\u0002J\u0010\u0010M\u001a\u00020\u000b2\u0006\u0010L\u001a\u00020\u0018H\u0002J\u001c\u0010N\u001a\u00020\u00182\b\u0010O\u001a\u0004\u0018\u00010\u000b2\b\u0010P\u001a\u0004\u0018\u00010\u000bH\u0002J\b\u0010Q\u001a\u00020\u0018H\u0002J\b\u0010R\u001a\u00020+H\u0002J\u0010\u0010S\u001a\u00020+2\u0006\u0010T\u001a\u00020\u0003H\u0002J\u0010\u0010U\u001a\u00020+2\u0006\u0010V\u001a\u00020\u0003H\u0002J\u0010\u0010W\u001a\u00020+2\u0006\u0010T\u001a\u00020\u0003H\u0002J\u0012\u0010X\u001a\u0004\u0018\u00010\u00032\u0006\u0010T\u001a\u00020\u0003H\u0002J\b\u0010Y\u001a\u00020\u0013H\u0002J\u0010\u0010Z\u001a\u00020\u00132\u0006\u0010O\u001a\u00020\u000bH\u0002J\u001c\u0010[\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\\\u001a\u00020\u00182\b\u0010]\u001a\u0004\u0018\u00010\u000bH\u0002J\u0012\u0010^\u001a\u00020+2\b\u0010_\u001a\u0004\u0018\u00010\u000fH\u0002J\u0010\u0010`\u001a\u00020+2\u0006\u0010a\u001a\u00020\rH\u0002J\b\u0010b\u001a\u00020+H\u0002J\b\u0010c\u001a\u00020+H\u0002J\b\u0010d\u001a\u00020+H\u0002J\b\u0010e\u001a\u00020+H\u0002J\b\u0010f\u001a\u00020+H\u0002J\u0014\u0010g\u001a\u0004\u0018\u00010\r2\b\u0010h\u001a\u0004\u0018\u00010\u000bH\u0002J \u0010i\u001a\u00020\u00132\u0006\u0010O\u001a\u00020\u000b2\u0006\u0010P\u001a\u00020\u000b2\u0006\u0010j\u001a\u00020\u000bH\u0002J\u0010\u0010k\u001a\u00020\u00132\u0006\u0010h\u001a\u00020\u000bH\u0002J\u0010\u0010l\u001a\u00020\u00132\u0006\u0010h\u001a\u00020\u000bH\u0002J\u0010\u0010m\u001a\u00020\u00132\u0006\u0010h\u001a\u00020\u000bH\u0002J\b\u0010n\u001a\u00020+H\u0002J\u0010\u0010n\u001a\u00020+2\u0006\u0010o\u001a\u00020\u0013H\u0002J\u001a\u0010n\u001a\u00020+2\b\u00101\u001a\u0004\u0018\u0001022\u0006\u0010o\u001a\u00020\u0013H\u0002J\u0012\u0010p\u001a\u0004\u0018\u00010\u000b2\u0006\u00101\u001a\u000202H\u0002J\b\u0010q\u001a\u00020+H\u0002J\b\u0010r\u001a\u00020+H\u0002J\b\u0010s\u001a\u00020\u0013H\u0002J\u0012\u0010t\u001a\u00020\u000b2\b\u0010u\u001a\u0004\u0018\u00010\u000fH\u0002J\u0012\u0010v\u001a\u00020\u000b2\b\u0010w\u001a\u0004\u0018\u00010\u000bH\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006|"}, d2 = {"Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "currentService", "Lcom/exteragram/messenger/ai/data/Service;", "<init>", "(Lcom/exteragram/messenger/ai/data/Service;)V", "clipChangedListener", "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;", "clipboardManager", "Landroid/content/ClipboardManager;", "pasteString", _UrlKt.FRAGMENT_ENCODE_SET, "pasteInput", "Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$ParsedServiceInput;", "urlCell", "Lorg/telegram/ui/Cells/EditTextCell;", "modelCell", "keyCell", "hasChanges", _UrlKt.FRAGMENT_ENCODE_SET, "updatingFields", "isTesting", "forceCustomPreset", "selectedPresetIndex", _UrlKt.FRAGMENT_ENCODE_SET, "shiftDp", "keyboardInset", "initialUrl", "initialModel", "initialKey", "initialReasoningEnabled", "reasoningEnabled", "testingClient", "Lcom/exteragram/messenger/ai/network/Client;", "testingRequestId", "testingProgressDialog", "Lorg/telegram/ui/ActionBar/AlertDialog;", "onInsetsInternal", "Landroidx/core/view/WindowInsetsCompat;", PluginsConstants.Settings.VIEW, "Landroid/view/View;", "windowInsets", "onInsets", _UrlKt.FRAGMENT_ENCODE_SET, "left", "top", "right", "bottom", "createView", "context", "Landroid/content/Context;", "getTitle", "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "onResume", "onPause", "onFragmentDestroy", "onTransitionAnimationEnd", "isOpen", "backward", "createFields", "initializeState", "updateFormState", "setTesting", "testing", "applyPreset", "index", "getPresetTitle", "findPresetIndex", "url", "model", "getCustomPresetIndex", "saveConfig", "testAndSave", "service", "useExistingService", "existingService", "applySelection", "findExistingService", "validateFields", "isValidServiceUrl", "getFieldForError", "errorCode", "errorMessage", "showFieldError", "cell", "applyParsedServiceInput", PluginsConstants.Settings.TYPE_INPUT, "showTestingProgressDialog", "cancelTesting", "stopTestingRequest", "hideTestingProgressDialog", "clearTestingState", "parseServiceInput", "text", "isLikelyService", PluginsConstants.Settings.KEY, "isLikelyServiceUrl", "isLikelyModel", "isLikelyApiKey", "updateClipboardState", "updateList", "readClipboardText", "confirmDeleteService", "deleteCurrentService", "hasFields", "getFieldText", "field", "safeString", "value", "ServiceItem", "Companion", "ServicePreset", "ParsedServiceInput", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEditServiceActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditServiceActivity.kt\ncom/exteragram/messenger/ai/ui/activities/EditServiceActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,653:1\n1915#2,2:654\n296#2,2:657\n1586#2:660\n1661#2,3:661\n777#2:664\n873#2,2:665\n1#3:656\n29#4:659\n*S KotlinDebug\n*F\n+ 1 EditServiceActivity.kt\ncom/exteragram/messenger/ai/ui/activities/EditServiceActivity\n*L\n143#1:654,2\n451#1:657,2\n544#1:660\n544#1:661,3\n544#1:664\n544#1:665,2\n471#1:659\n*E\n"})
public final class EditServiceActivity extends BasePreferencesActivity {
    private static final ServicePreset[] SERVICE_PRESETS = {new ServicePreset("Gemini", "https://generativelanguage.googleapis.com/v1beta", "gemini-3.5-flash"), new ServicePreset("OpenAI", "https://api.openai.com/v1", "gpt-5.4-mini"), new ServicePreset("OpenRouter", "https://openrouter.ai/api/v1", "openai/gpt-5.4-mini"), new ServicePreset("Perplexity", "https://api.perplexity.ai/v1/agent", "perplexity/glm-5.3-flash"), new ServicePreset(null, null, null)};
    private final ClipboardManager.OnPrimaryClipChangedListener clipChangedListener;
    private ClipboardManager clipboardManager;
    private final Service currentService;
    private boolean forceCustomPreset;
    private boolean hasChanges;
    private String initialKey;
    private String initialModel;
    private boolean initialReasoningEnabled;
    private String initialUrl;
    private boolean isTesting;
    private EditTextCell keyCell;
    private int keyboardInset;
    private EditTextCell modelCell;
    private ParsedServiceInput pasteInput;
    private String pasteString;
    private boolean reasoningEnabled;
    private int selectedPresetIndex;
    private int shiftDp;
    private Client testingClient;
    private AlertDialog testingProgressDialog;
    private String testingRequestId;
    private boolean updatingFields;
    private EditTextCell urlCell;

    @Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ServiceItem.values().length];
            try {
                iArr[ServiceItem.PRESET_GEMINI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ServiceItem.PRESET_OPENAI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ServiceItem.PRESET_OPENROUTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ServiceItem.PRESET_PERPLEXITY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ServiceItem.PRESET_CUSTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ServiceItem.PASTE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ServiceItem.SAVE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ServiceItem.DELETE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ServiceItem.REASONING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public EditServiceActivity() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ EditServiceActivity(Service service, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : service);
    }

    @JvmOverloads
    public EditServiceActivity(Service service) {
        this.currentService = service;
        this.clipChangedListener = new ClipboardManager.OnPrimaryClipChangedListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda4
            @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
            public final void onPrimaryClipChanged() {
                this.f$0.updateClipboardState();
            }
        };
        this.shiftDp = -4;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u0011"}, d2 = {"Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$ServiceItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "PRESET_GEMINI", "PRESET_OPENAI", "PRESET_OPENROUTER", "PRESET_PERPLEXITY", "PRESET_CUSTOM", "PASTE", "SAVE", "DELETE", "REASONING", "id", _UrlKt.FRAGMENT_ENCODE_SET, "getId", "()I", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ServiceItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ServiceItem[] $VALUES;
        private final int id = ordinal() + 1;
        public static final ServiceItem PRESET_GEMINI = new ServiceItem("PRESET_GEMINI", 0);
        public static final ServiceItem PRESET_OPENAI = new ServiceItem("PRESET_OPENAI", 1);
        public static final ServiceItem PRESET_OPENROUTER = new ServiceItem("PRESET_OPENROUTER", 2);
        public static final ServiceItem PRESET_PERPLEXITY = new ServiceItem("PRESET_PERPLEXITY", 3);
        public static final ServiceItem PRESET_CUSTOM = new ServiceItem("PRESET_CUSTOM", 4);
        public static final ServiceItem PASTE = new ServiceItem("PASTE", 5);
        public static final ServiceItem SAVE = new ServiceItem("SAVE", 6);
        public static final ServiceItem DELETE = new ServiceItem("DELETE", 7);
        public static final ServiceItem REASONING = new ServiceItem("REASONING", 8);

        private static final /* synthetic */ ServiceItem[] $values() {
            return new ServiceItem[]{PRESET_GEMINI, PRESET_OPENAI, PRESET_OPENROUTER, PRESET_PERPLEXITY, PRESET_CUSTOM, PASTE, SAVE, DELETE, REASONING};
        }

        public static EnumEntries<ServiceItem> getEntries() {
            return $ENTRIES;
        }

        public static ServiceItem valueOf(String str) {
            return (ServiceItem) Enum.valueOf(ServiceItem.class, str);
        }

        public static ServiceItem[] values() {
            return (ServiceItem[]) $VALUES.clone();
        }

        private ServiceItem(String str, int i) {
        }

        static {
            ServiceItem[] serviceItemArr$values = $values();
            $VALUES = serviceItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(serviceItemArr$values);
        }

        public final int getId() {
            return this.id;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public WindowInsetsCompat onInsetsInternal(View view, WindowInsetsCompat windowInsets) {
        this.keyboardInset = Math.max(0, windowInsets.getInsets(WindowInsetsCompat.Type.ime()).bottom - windowInsets.getInsets(WindowInsetsCompat.Type.navigationBars() | WindowInsetsCompat.Type.statusBars()).bottom);
        return super.onInsetsInternal(view, windowInsets);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int left, int top, int right, int bottom) {
        super.onInsets(left, top, right, bottom + this.keyboardInset);
        if (this.keyboardInset > 0) {
            getListView$TMessagesProj().post(new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    EditServiceActivity.$r8$lambda$wYDNLouUWvFNTh3qP5BBmNXhyr4(this.f$0);
                }
            });
        }
    }

    public static void $r8$lambda$wYDNLouUWvFNTh3qP5BBmNXhyr4(EditServiceActivity editServiceActivity) {
        View viewFindFocus = editServiceActivity.getListView$TMessagesProj().findFocus();
        if (viewFindFocus != null) {
            viewFindFocus.requestRectangleOnScreen(new Rect(0, 0, viewFindFocus.getWidth(), viewFindFocus.getHeight()), false);
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        Object systemService = context.getSystemService("clipboard");
        this.clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
        createFields(context);
        initializeState();
        updateClipboardState(context, false);
        View viewCreateView = super.createView(context);
        this.actionBar.setAllowOverlayTitle(true);
        return viewCreateView;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(this.currentService != null ? C2665R.string.EditService : C2665R.string.NewService);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        boolean z;
        boolean z2;
        int id;
        CharSequence charSequenceApplyNewSpan = SettingsRegistry.markAsNewFeature("AI-Service-Reasoning") ? LocaleUtils.applyNewSpan(LocaleController.getString(C2665R.string.AIReasoning)) : LocaleController.getString(C2665R.string.AIReasoning);
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.ServiceProvider)));
        Iterator<Integer> it = ArraysKt.getIndices(SERVICE_PRESETS).iterator();
        while (true) {
            z = false;
            z2 = true;
            if (!it.hasNext()) {
                break;
            }
            int iNextInt = ((IntIterator) it).nextInt();
            if (iNextInt == 0) {
                id = ServiceItem.PRESET_GEMINI.getId();
            } else if (iNextInt == 1) {
                id = ServiceItem.PRESET_OPENAI.getId();
            } else if (iNextInt == 2) {
                id = ServiceItem.PRESET_OPENROUTER.getId();
            } else if (iNextInt == 3) {
                id = ServiceItem.PRESET_PERPLEXITY.getId();
            } else {
                id = ServiceItem.PRESET_CUSTOM.getId();
            }
            UItem uItemAsRadio = UItem.asRadio(id, getPresetTitle(iNextInt));
            if (iNextInt == this.selectedPresetIndex) {
                z = true;
            }
            items.add(uItemAsRadio.setChecked(z).setEnabled(!this.isTesting));
        }
        items.add(UItem.asShadow(LocaleController.getString(C2665R.string.ServicesInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2665R.string.ServiceInfo)));
        EditTextCell editTextCell = this.urlCell;
        if (editTextCell == null) {
            editTextCell = null;
        }
        items.add(UItem.asCustom(editTextCell));
        EditTextCell editTextCell2 = this.modelCell;
        if (editTextCell2 == null) {
            editTextCell2 = null;
        }
        items.add(UItem.asCustom(editTextCell2));
        EditTextCell editTextCell3 = this.keyCell;
        items.add(UItem.asCustom(editTextCell3 != null ? editTextCell3 : null));
        UItem uItemUCheck$TMessagesProj$default = BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ServiceItem.REASONING, charSequenceApplyNewSpan, this.reasoningEnabled, (CharSequence) LocaleController.getString(C2665R.string.AIReasoningInfo), 0, false, (String) null, false, 0, 464, (Object) null);
        uItemUCheck$TMessagesProj$default.setEnabled(!this.isTesting);
        items.add(uItemUCheck$TMessagesProj$default);
        items.add(UItem.asShadow());
        ParsedServiceInput parsedServiceInput = this.pasteInput;
        if (parsedServiceInput != null) {
            UItem uItemUButton$TMessagesProj$default = BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ServiceItem.PASTE, (CharSequence) LocaleController.getString(parsedServiceInput.hasServiceFields() ? C2665R.string.ServicePasteService : C2665R.string.ServicePasteKey), C2665R.drawable.msg_copy, (CharSequence) null, (CharSequence) null, (Boolean) null, false, (String) null, false, true, (Boolean) null, 1464, (Object) null);
            uItemUButton$TMessagesProj$default.setEnabled(!this.isTesting);
            items.add(uItemUButton$TMessagesProj$default);
            z = true;
        }
        if (this.hasChanges) {
            UItem uItemUButton$TMessagesProj$default2 = BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ServiceItem.SAVE, (CharSequence) LocaleController.getString(C2665R.string.ServiceTestAndSave), C2665R.drawable.ic_ab_done, (CharSequence) null, (CharSequence) null, (Boolean) null, false, (String) null, false, true, (Boolean) null, 1464, (Object) null);
            uItemUButton$TMessagesProj$default2.setEnabled(!this.isTesting);
            items.add(uItemUButton$TMessagesProj$default2);
            z = true;
        }
        if (this.currentService != null) {
            UItem uItemUButton$TMessagesProj$default3 = BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ServiceItem.DELETE, (CharSequence) LocaleController.getString(C2665R.string.Delete), C2665R.drawable.msg_delete, (CharSequence) null, (CharSequence) null, (Boolean) null, false, (String) null, true, false, (Boolean) null, 1720, (Object) null);
            uItemUButton$TMessagesProj$default3.setEnabled(!this.isTesting);
            items.add(uItemUButton$TMessagesProj$default3);
        } else {
            z2 = z;
        }
        ExtensionsKt.addIf(items, z2, UItem.asShadow());
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i;
        if (this.isTesting || (i = item.id) <= 0 || i > ServiceItem.getEntries().size()) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[ServiceItem.getEntries().get(item.id - 1).ordinal()]) {
            case 1:
                applyPreset(0);
                break;
            case 2:
                applyPreset(1);
                break;
            case 3:
                applyPreset(2);
                break;
            case 4:
                applyPreset(3);
                break;
            case 5:
                applyPreset(4);
                break;
            case 6:
                ParsedServiceInput serviceInput = this.pasteInput;
                if (serviceInput == null) {
                    serviceInput = parseServiceInput(this.pasteString);
                }
                if (serviceInput != null) {
                    applyParsedServiceInput(serviceInput);
                }
                break;
            case 7:
                saveConfig();
                break;
            case 8:
                confirmDeleteService();
                break;
            case 9:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda6
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.reasoningEnabled = ((Boolean) obj).booleanValue();
                    }
                });
                updateFormState();
                break;
            default:
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
                break;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.removePrimaryClipChangedListener(this.clipChangedListener);
            clipboardManager.addPrimaryClipChangedListener(this.clipChangedListener);
        }
        updateClipboardState();
        if (MessagesController.getGlobalMainSettings().getBoolean("view_animations", true)) {
            return;
        }
        EditTextCell editTextCell = this.keyCell;
        if (editTextCell == null) {
            editTextCell = null;
        }
        editTextCell.editText.requestFocus();
        EditTextCell editTextCell2 = this.keyCell;
        AndroidUtilities.showKeyboard((editTextCell2 != null ? editTextCell2 : null).editText);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.removePrimaryClipChangedListener(this.clipChangedListener);
        }
        super.onPause();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        stopTestingRequest();
        hideTestingProgressDialog();
        this.testingRequestId = null;
        this.testingClient = null;
        super.onFragmentDestroy();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean isOpen, boolean backward) {
        if (isOpen) {
            EditTextCell editTextCell = this.keyCell;
            if (editTextCell == null) {
                editTextCell = null;
            }
            editTextCell.editText.requestFocus();
            EditTextCell editTextCell2 = this.keyCell;
            AndroidUtilities.showKeyboard((editTextCell2 != null ? editTextCell2 : null).editText);
        }
    }

    private final void createFields(Context context) {
        EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2665R.string.ServiceURL), this.resourceProvider) { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity.createFields.1
            @Override // org.telegram.ui.Cells.EditTextCell
            public void onTextChanged(CharSequence newText) {
                this.updateFormState();
            }
        };
        editTextCell.editText.setInputType(524305);
        editTextCell.editText.setRawInputType(524305);
        editTextCell.editText.setImeOptions(268435461);
        editTextCell.editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda0
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return EditServiceActivity.$r8$lambda$lscJkIKf7n3nnFMVVhpBpnjxbUM(this.f$0, textView, i, keyEvent);
            }
        });
        this.urlCell = editTextCell;
        EditTextCell editTextCell2 = new EditTextCell(context, LocaleController.getString(C2665R.string.ServiceModel), this.resourceProvider) { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity.createFields.3
            @Override // org.telegram.ui.Cells.EditTextCell
            public void onTextChanged(CharSequence newText) {
                this.updateFormState();
            }
        };
        editTextCell2.editText.setInputType(524289);
        editTextCell2.editText.setRawInputType(524289);
        editTextCell2.editText.setImeOptions(268435461);
        editTextCell2.editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return EditServiceActivity.$r8$lambda$1SCL0CnuTbI82uTDAeg_HX1M5zw(this.f$0, textView, i, keyEvent);
            }
        });
        this.modelCell = editTextCell2;
        EditTextCell editTextCell3 = new EditTextCell(context, LocaleController.getString(C2665R.string.ServiceKey), this.resourceProvider) { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity.createFields.5
            @Override // org.telegram.ui.Cells.EditTextCell
            public void onTextChanged(CharSequence newText) {
                this.updateFormState();
            }
        };
        editTextCell3.editText.setInputType(524433);
        editTextCell3.editText.setRawInputType(524433);
        editTextCell3.editText.setImeOptions(268435462);
        editTextCell3.editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda2
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return EditServiceActivity.$r8$lambda$_m8vjYxg1LD6Lz_KbmGMzrOsdn8(this.f$0, textView, i, keyEvent);
            }
        });
        this.keyCell = editTextCell3;
    }

    public static boolean $r8$lambda$lscJkIKf7n3nnFMVVhpBpnjxbUM(EditServiceActivity editServiceActivity, TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5 && i != 6) {
            return false;
        }
        EditTextCell editTextCell = editServiceActivity.modelCell;
        if (editTextCell == null) {
            editTextCell = null;
        }
        editTextCell.editText.requestFocus();
        EditTextCell editTextCell2 = editServiceActivity.modelCell;
        AndroidUtilities.showKeyboard((editTextCell2 != null ? editTextCell2 : null).editText);
        return true;
    }

    public static boolean $r8$lambda$1SCL0CnuTbI82uTDAeg_HX1M5zw(EditServiceActivity editServiceActivity, TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5 && i != 6) {
            return false;
        }
        EditTextCell editTextCell = editServiceActivity.keyCell;
        if (editTextCell == null) {
            editTextCell = null;
        }
        editTextCell.editText.requestFocus();
        EditTextCell editTextCell2 = editServiceActivity.keyCell;
        AndroidUtilities.showKeyboard((editTextCell2 != null ? editTextCell2 : null).editText);
        return true;
    }

    public static boolean $r8$lambda$_m8vjYxg1LD6Lz_KbmGMzrOsdn8(EditServiceActivity editServiceActivity, TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        editServiceActivity.saveConfig();
        return true;
    }

    private final void initializeState() {
        Service service = this.currentService;
        if (service == null) {
            service = AiConfig.DEFAULT_SERVICE;
        }
        this.initialUrl = service.getUrl();
        this.initialModel = service.getModel();
        this.initialKey = service.getKey();
        boolean zIsReasoningEnabled = service.isReasoningEnabled();
        this.initialReasoningEnabled = zIsReasoningEnabled;
        this.reasoningEnabled = zIsReasoningEnabled;
        EditTextCell editTextCell = this.urlCell;
        if (editTextCell == null) {
            editTextCell = null;
        }
        editTextCell.setText(safeString(this.initialUrl));
        EditTextCell editTextCell2 = this.modelCell;
        if (editTextCell2 == null) {
            editTextCell2 = null;
        }
        editTextCell2.setText(safeString(this.initialModel));
        EditTextCell editTextCell3 = this.keyCell;
        (editTextCell3 != null ? editTextCell3 : null).setText(safeString(this.initialKey));
        this.hasChanges = false;
        int iFindPresetIndex = findPresetIndex(this.initialUrl, this.initialModel);
        this.selectedPresetIndex = iFindPresetIndex;
        this.forceCustomPreset = iFindPresetIndex == getCustomPresetIndex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void updateFormState() {
        boolean z;
        if (this.updatingFields || !hasFields()) {
            return;
        }
        boolean z2 = this.hasChanges;
        int i = this.selectedPresetIndex;
        ParsedServiceInput parsedServiceInput = this.pasteInput;
        boolean z3 = false;
        boolean z4 = parsedServiceInput != null;
        boolean z5 = parsedServiceInput != null && parsedServiceInput.hasServiceFields();
        EditTextCell editTextCell = this.urlCell;
        if (editTextCell == null) {
            editTextCell = null;
        }
        if (TextUtils.equals(getFieldText(editTextCell), safeString(this.initialUrl))) {
            EditTextCell editTextCell2 = this.modelCell;
            if (editTextCell2 == null) {
                editTextCell2 = null;
            }
            if (TextUtils.equals(getFieldText(editTextCell2), safeString(this.initialModel))) {
                EditTextCell editTextCell3 = this.keyCell;
                if (editTextCell3 == null) {
                    editTextCell3 = null;
                }
                if (TextUtils.equals(getFieldText(editTextCell3), safeString(this.initialKey)) && this.reasoningEnabled == this.initialReasoningEnabled) {
                    z = false;
                }
            }
        } else {
            z = true;
        }
        this.hasChanges = z;
        EditTextCell editTextCell4 = this.urlCell;
        if (editTextCell4 == null) {
            editTextCell4 = null;
        }
        String fieldText = getFieldText(editTextCell4);
        EditTextCell editTextCell5 = this.modelCell;
        int iFindPresetIndex = findPresetIndex(fieldText, getFieldText(editTextCell5 != null ? editTextCell5 : null));
        if (this.forceCustomPreset) {
            iFindPresetIndex = getCustomPresetIndex();
        }
        this.selectedPresetIndex = iFindPresetIndex;
        updateClipboardState(false);
        ParsedServiceInput parsedServiceInput2 = this.pasteInput;
        boolean z6 = parsedServiceInput2 != null;
        if (parsedServiceInput2 != null && parsedServiceInput2.hasServiceFields()) {
            z3 = true;
        }
        if (this.fragmentView == null || getListView$TMessagesProj().adapter == null) {
            return;
        }
        if (z2 == this.hasChanges && i == this.selectedPresetIndex && z4 == z6 && z5 == z3) {
            return;
        }
        getListView$TMessagesProj().adapter.update(true);
    }

    private final void setTesting(boolean testing) {
        this.isTesting = testing;
        UniversalAdapter universalAdapter = getListView$TMessagesProj().adapter;
        if (universalAdapter != null) {
            universalAdapter.update(true);
        }
    }

    private final void applyPreset(int index) {
        ServicePreset servicePreset = SERVICE_PRESETS[index];
        if (servicePreset.getUrl() == null || servicePreset.getModel() == null) {
            this.forceCustomPreset = true;
            this.updatingFields = true;
            EditTextCell editTextCell = this.urlCell;
            if (editTextCell == null) {
                editTextCell = null;
            }
            editTextCell.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            EditTextCell editTextCell2 = this.modelCell;
            if (editTextCell2 == null) {
                editTextCell2 = null;
            }
            editTextCell2.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.updatingFields = false;
            updateFormState();
            EditTextCell editTextCell3 = this.urlCell;
            if (editTextCell3 == null) {
                editTextCell3 = null;
            }
            editTextCell3.editText.requestFocus();
            EditTextCell editTextCell4 = this.urlCell;
            AndroidUtilities.showKeyboard((editTextCell4 != null ? editTextCell4 : null).editText);
            return;
        }
        this.forceCustomPreset = false;
        this.updatingFields = true;
        EditTextCell editTextCell5 = this.urlCell;
        if (editTextCell5 == null) {
            editTextCell5 = null;
        }
        editTextCell5.setText(servicePreset.getUrl());
        EditTextCell editTextCell6 = this.modelCell;
        if (editTextCell6 == null) {
            editTextCell6 = null;
        }
        editTextCell6.setText(servicePreset.getModel());
        this.updatingFields = false;
        updateFormState();
        EditTextCell editTextCell7 = this.keyCell;
        if (editTextCell7 == null) {
            editTextCell7 = null;
        }
        editTextCell7.editText.requestFocus();
        EditTextCell editTextCell8 = this.keyCell;
        AndroidUtilities.showKeyboard((editTextCell8 != null ? editTextCell8 : null).editText);
    }

    private final String getPresetTitle(int index) {
        String name = SERVICE_PRESETS[index].getName();
        return name == null ? LocaleController.getString(C2665R.string.ServiceProviderCustom) : name;
    }

    private final int findPresetIndex(String url, String model) {
        int length = SERVICE_PRESETS.length - 1;
        for (int i = 0; i < length; i++) {
            ServicePreset servicePreset = SERVICE_PRESETS[i];
            if (TextUtils.equals(url, servicePreset.getUrl()) && TextUtils.equals(model, servicePreset.getModel())) {
                return i;
            }
        }
        return getCustomPresetIndex();
    }

    private final int getCustomPresetIndex() {
        return SERVICE_PRESETS.length - 1;
    }

    private final void saveConfig() {
        if (this.isTesting || !validateFields()) {
            return;
        }
        EditTextCell editTextCell = this.urlCell;
        if (editTextCell == null) {
            editTextCell = null;
        }
        String fieldText = getFieldText(editTextCell);
        EditTextCell editTextCell2 = this.modelCell;
        if (editTextCell2 == null) {
            editTextCell2 = null;
        }
        String fieldText2 = getFieldText(editTextCell2);
        EditTextCell editTextCell3 = this.keyCell;
        Service service = new Service(fieldText, fieldText2, getFieldText(editTextCell3 != null ? editTextCell3 : null), this.reasoningEnabled);
        Service serviceFindExistingService = findExistingService(service);
        Service service2 = this.currentService;
        boolean z = (service2 == null || service2.isReasoningEnabled() == this.reasoningEnabled) ? false : true;
        if (serviceFindExistingService != null && !Intrinsics.areEqual(serviceFindExistingService, this.currentService)) {
            if (this.currentService != null) {
                BulletinFactory.of(this).createErrorBulletin(LocaleController.getString(C2665R.string.ServiceDuplicate)).show();
                return;
            } else {
                useExistingService(serviceFindExistingService);
                return;
            }
        }
        if (serviceFindExistingService != null && !z) {
            applySelection(serviceFindExistingService);
        } else {
            testAndSave(service);
        }
    }

    private final void testAndSave(Service service) {
        Client.Builder builder = new Client.Builder();
        builder.serviceOverride(service);
        builder.roleOverride(Suggestions.ASSISTANT.getRole());
        this.testingClient = builder.build();
        showTestingProgressDialog();
        setTesting(true);
        Client client = this.testingClient;
        this.testingRequestId = client != null ? client.getResponse("Say 'hi'.", new C12122(service)) : null;
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$testAndSave$2 */
    @Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0016¨\u0006\f"}, d2 = {"com/exteragram/messenger/ai/ui/activities/EditServiceActivity$testAndSave$2", "Lcom/exteragram/messenger/ai/network/GenerationCallback;", "onChunk", _UrlKt.FRAGMENT_ENCODE_SET, "string", _UrlKt.FRAGMENT_ENCODE_SET, "onResponse", "finalResponse", "onError", "errorCode", _UrlKt.FRAGMENT_ENCODE_SET, "errorMessage", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class C12122 implements GenerationCallback {
        final /* synthetic */ Service $service;

        @Override // com.exteragram.messenger.ai.network.GenerationCallback
        public void onChunk(String string) {
        }

        public C12122(Service service) {
            this.$service = service;
        }

        @Override // com.exteragram.messenger.ai.network.GenerationCallback
        public void onResponse(String finalResponse) {
            final EditServiceActivity editServiceActivity = EditServiceActivity.this;
            final Service service = this.$service;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$testAndSave$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    EditServiceActivity.C12122.$r8$lambda$IiF_AungF8sXl5BJJVqdLioh6QU(editServiceActivity, service);
                }
            });
        }

        public static void $r8$lambda$IiF_AungF8sXl5BJJVqdLioh6QU(EditServiceActivity editServiceActivity, Service service) {
            editServiceActivity.clearTestingState();
            if (editServiceActivity.currentService != null) {
                AiController.getInstance().updateService(editServiceActivity.currentService, service);
            } else {
                AiController.getInstance().addService(service);
            }
            editServiceActivity.applySelection(service);
        }

        @Override // com.exteragram.messenger.ai.network.GenerationCallback
        public void onError(final int errorCode, final String errorMessage) {
            final EditServiceActivity editServiceActivity = EditServiceActivity.this;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$testAndSave$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    EditServiceActivity.C12122.$r8$lambda$pRZeN_KicN8khW_IJzcsWQJulRY(editServiceActivity, errorCode, errorMessage);
                }
            });
        }

        public static void $r8$lambda$pRZeN_KicN8khW_IJzcsWQJulRY(EditServiceActivity editServiceActivity, int i, String str) {
            editServiceActivity.clearTestingState();
            AiController.showErrorBulletin(editServiceActivity, i, str);
            editServiceActivity.showFieldError(editServiceActivity.getFieldForError(i, str));
        }
    }

    private final void useExistingService(Service existingService) {
        boolean zIsReasoningEnabled = existingService.isReasoningEnabled();
        boolean z = this.reasoningEnabled;
        if (zIsReasoningEnabled != z) {
            existingService.setReasoningEnabled(z);
            AiController.getInstance().saveServices();
        }
        applySelection(existingService);
        BulletinFactory.global().createSimpleBulletin(C2665R.raw.chats_infotip, LocaleController.getString(C2665R.string.ServiceAlreadyExists), LocaleController.getString(C2665R.string.ServiceAlreadyExistsInfo)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applySelection(Service service) {
        AiConfig.setSelectedServices(service);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.servicesUpdated, new Object[0]);
        finishFragment();
    }

    private final Service findExistingService(Service service) {
        Object next;
        Iterator<T> it = AiController.getInstance().getAll().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual((Service) next, service)) {
                break;
            }
        }
        return (Service) next;
    }

    private final boolean validateFields() {
        EditTextCell editTextCell = this.urlCell;
        if (editTextCell == null) {
            editTextCell = null;
        }
        if (!isValidServiceUrl(getFieldText(editTextCell))) {
            EditTextCell editTextCell2 = this.urlCell;
            showFieldError(editTextCell2 != null ? editTextCell2 : null);
            return false;
        }
        EditTextCell editTextCell3 = this.modelCell;
        if (editTextCell3 == null) {
            editTextCell3 = null;
        }
        if (getFieldText(editTextCell3).length() == 0) {
            EditTextCell editTextCell4 = this.modelCell;
            showFieldError(editTextCell4 != null ? editTextCell4 : null);
            return false;
        }
        EditTextCell editTextCell5 = this.keyCell;
        if (editTextCell5 == null) {
            editTextCell5 = null;
        }
        if (getFieldText(editTextCell5).length() != 0) {
            return true;
        }
        EditTextCell editTextCell6 = this.keyCell;
        showFieldError(editTextCell6 != null ? editTextCell6 : null);
        return false;
    }

    private final boolean isValidServiceUrl(String url) {
        String host;
        if (url.length() == 0) {
            return false;
        }
        Uri uri = Uri.parse(url);
        String scheme = uri.getScheme();
        return ((!StringsKt.equals("http", scheme, true) && !StringsKt.equals("https", scheme, true)) || (host = uri.getHost()) == null || host.length() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EditTextCell getFieldForError(int errorCode, String errorMessage) {
        switch (errorCode) {
            case MediaError.DetailedErrorCode.MANIFEST_UNKNOWN /* 400 */:
                EditTextCell editTextCell = this.modelCell;
                if (editTextCell == null) {
                }
                break;
            case 401:
            case 403:
                EditTextCell editTextCell2 = this.keyCell;
                if (editTextCell2 == null) {
                }
                break;
            case 404:
                if (errorMessage == null || !StringsKt.contains$default((CharSequence) errorMessage.toLowerCase(Locale.ROOT), (CharSequence) "model", false, 2, (Object) null)) {
                    EditTextCell editTextCell3 = this.urlCell;
                    if (editTextCell3 == null) {
                    }
                } else {
                    EditTextCell editTextCell4 = this.modelCell;
                    if (editTextCell4 == null) {
                    }
                }
                break;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showFieldError(EditTextCell cell) {
        if (cell == null) {
            return;
        }
        BotWebViewVibrationEffect.APP_ERROR.vibrate();
        int i = -this.shiftDp;
        this.shiftDp = i;
        AndroidUtilities.shakeViewSpring(cell, i);
        cell.editText.requestFocus();
        AndroidUtilities.showKeyboard(cell.editText);
    }

    private final void applyParsedServiceInput(ParsedServiceInput input) {
        this.updatingFields = true;
        String url = input.getUrl();
        if (url != null && url.length() != 0) {
            EditTextCell editTextCell = this.urlCell;
            if (editTextCell == null) {
                editTextCell = null;
            }
            editTextCell.setText(input.getUrl());
        }
        String model = input.getModel();
        if (model != null && model.length() != 0) {
            EditTextCell editTextCell2 = this.modelCell;
            if (editTextCell2 == null) {
                editTextCell2 = null;
            }
            editTextCell2.setText(input.getModel());
        }
        String key = input.getKey();
        if (key != null && key.length() != 0) {
            EditTextCell editTextCell3 = this.keyCell;
            (editTextCell3 != null ? editTextCell3 : null).setText(input.getKey());
        }
        this.forceCustomPreset = false;
        this.updatingFields = false;
        updateFormState();
    }

    private final void showTestingProgressDialog() {
        if (getParentActivity() == null) {
            return;
        }
        AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.cancelTesting();
            }
        });
        this.testingProgressDialog = alertDialog;
        showDialog(alertDialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelTesting() {
        stopTestingRequest();
        clearTestingState();
    }

    private final void stopTestingRequest() {
        String str;
        Client client;
        if (this.testingClient == null || (str = this.testingRequestId) == null || str.length() == 0 || (client = this.testingClient) == null) {
            return;
        }
        client.stopRequest(this.testingRequestId);
    }

    private final void hideTestingProgressDialog() {
        AlertDialog alertDialog = this.testingProgressDialog;
        if (alertDialog != null) {
            try {
                alertDialog.dismiss();
            } catch (Exception unused) {
            }
        }
        this.testingProgressDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearTestingState() {
        hideTestingProgressDialog();
        setTesting(false);
        this.testingRequestId = null;
        this.testingClient = null;
    }

    private final ParsedServiceInput parseServiceInput(String text) {
        if (text != null && text.length() != 0) {
            String string = StringsKt.trim((CharSequence) text).toString();
            if (string.length() == 0) {
                return null;
            }
            int i = 0;
            List<String> listSplit = new Regex("\\r?\\n").split(string, 0);
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit, 10));
            Iterator<T> it = listSplit.iterator();
            while (it.hasNext()) {
                arrayList.add(StringsKt.trim((CharSequence) it.next()).toString());
            }
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                if (((String) obj).length() > 0) {
                    arrayList2.add(obj);
                }
            }
            if (arrayList2.size() >= 3 && isLikelyService((String) arrayList2.get(0), (String) arrayList2.get(1), (String) arrayList2.get(2))) {
                return new ParsedServiceInput((String) arrayList2.get(0), (String) arrayList2.get(1), (String) arrayList2.get(2));
            }
            int size2 = arrayList2.size() - 3;
            if (size2 >= 0) {
                while (true) {
                    int i3 = i + 1;
                    int i4 = i + 2;
                    if (!isLikelyService((String) arrayList2.get(i), (String) arrayList2.get(i3), (String) arrayList2.get(i4))) {
                        if (i == size2) {
                            break;
                        }
                        i = i3;
                    } else {
                        return new ParsedServiceInput((String) arrayList2.get(i), (String) arrayList2.get(i3), (String) arrayList2.get(i4));
                    }
                }
            }
            if (arrayList2.size() == 1 && isLikelyApiKey(string)) {
                return new ParsedServiceInput(null, null, string);
            }
        }
        return null;
    }

    private final boolean isLikelyService(String url, String model, String key) {
        return isLikelyServiceUrl(url) && isLikelyModel(model) && isLikelyApiKey(key);
    }

    private final boolean isLikelyServiceUrl(String text) {
        return text.length() > 0 && (StringsKt.startsWith$default(text, "https://", false, 2, (Object) null) || StringsKt.startsWith$default(text, "http://", false, 2, (Object) null));
    }

    private final boolean isLikelyModel(String text) {
        return text.length() > 0 && text.length() <= 128 && !new Regex(".*\\s+.*").matches(text);
    }

    private final boolean isLikelyApiKey(String text) {
        return text.length() > 0 && text.length() >= 20 && text.length() <= 512 && new Regex("[A-Za-z0-9_.\\-]+").matches(text);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateClipboardState() {
        updateClipboardState(true);
    }

    private final void updateClipboardState(boolean updateList) {
        Context context;
        View view = this.fragmentView;
        if (view == null || (context = view.getContext()) == null) {
            context = getContext();
        }
        updateClipboardState(context, updateList);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void updateClipboardState(Context context, boolean updateList) {
        UniversalAdapter universalAdapter;
        if (this.clipboardManager == null || context == null || !hasFields()) {
            return;
        }
        ParsedServiceInput parsedServiceInput = this.pasteInput;
        boolean z = false;
        boolean z2 = parsedServiceInput != null;
        boolean z3 = parsedServiceInput != null && parsedServiceInput.hasServiceFields();
        String clipboardText = readClipboardText(context);
        ParsedServiceInput serviceInput = parseServiceInput(clipboardText);
        if (serviceInput != null) {
            EditTextCell editTextCell = this.urlCell;
            if (editTextCell == null) {
                editTextCell = null;
            }
            String fieldText = getFieldText(editTextCell);
            EditTextCell editTextCell2 = this.modelCell;
            if (editTextCell2 == null) {
                editTextCell2 = null;
            }
            String fieldText2 = getFieldText(editTextCell2);
            EditTextCell editTextCell3 = this.keyCell;
            if (editTextCell3 == null) {
                editTextCell3 = null;
            }
            if (serviceInput.differsFrom(fieldText, fieldText2, getFieldText(editTextCell3))) {
                this.pasteInput = serviceInput;
                this.pasteString = clipboardText;
            }
        } else {
            this.pasteInput = null;
            this.pasteString = null;
        }
        ParsedServiceInput parsedServiceInput2 = this.pasteInput;
        boolean z4 = parsedServiceInput2 != null;
        if (parsedServiceInput2 != null && parsedServiceInput2.hasServiceFields()) {
            z = true;
        }
        if (!updateList || this.fragmentView == null) {
            return;
        }
        if ((z2 == z4 && z3 == z) || (universalAdapter = getListView$TMessagesProj().adapter) == null) {
            return;
        }
        universalAdapter.update(true);
    }

    private final String readClipboardText(Context context) {
        ClipData primaryClip;
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager == null || (primaryClip = clipboardManager.getPrimaryClip()) == null || primaryClip.getItemCount() <= 0) {
            return null;
        }
        try {
            CharSequence charSequenceCoerceToText = primaryClip.getItemAt(0).coerceToText(context);
            if (charSequenceCoerceToText != null) {
                return charSequenceCoerceToText.toString();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private final void confirmDeleteService() {
        if (this.currentService == null || getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(C2665R.string.Delete));
        builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(C2665R.string.DeleteServiceInfo, this.currentService.getShortModel())));
        builder.setPositiveButton(LocaleController.getString(C2665R.string.Delete), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.ai.ui.activities.EditServiceActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.deleteCurrentService();
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2665R.string.Cancel), null);
        AlertDialog alertDialogCreate = builder.create();
        showDialog(alertDialogCreate);
        View button = alertDialogCreate.getButton(-1);
        TextView textView = button instanceof TextView ? (TextView) button : null;
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void deleteCurrentService() {
        boolean z;
        Service service = this.currentService;
        if (service != null) {
            z = service.isSelected();
        }
        if (this.currentService == null || !AiController.getInstance().removeService(this.currentService)) {
            return;
        }
        if (z) {
            AiConfig.clearSelectedService();
            if (!AiController.getInstance().isServicesEmpty()) {
                AiConfig.setSelectedServices(AiController.getInstance().getAll().get(0));
            }
        }
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.servicesUpdated, new Object[0]);
        finishFragment();
    }

    private final boolean hasFields() {
        return (this.urlCell == null || this.modelCell == null || this.keyCell == null) ? false : true;
    }

    private final String getFieldText(EditTextCell field) {
        CharSequence text;
        String string;
        String string2;
        return (field == null || (text = field.getText()) == null || (string = text.toString()) == null || (string2 = StringsKt.trim((CharSequence) string).toString()) == null) ? _UrlKt.FRAGMENT_ENCODE_SET : string2;
    }

    private final String safeString(String value) {
        return value == null ? _UrlKt.FRAGMENT_ENCODE_SET : value;
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$ServicePreset;", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "url", "model", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getUrl", "getModel", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ServicePreset {
        private final String model;
        private final String name;
        private final String url;

        public ServicePreset(String str, String str2, String str3) {
            this.name = str;
            this.url = str2;
            this.model = str3;
        }

        public final String getModel() {
            return this.model;
        }

        public final String getName() {
            return this.name;
        }

        public final String getUrl() {
            return this.url;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\f\u001a\u00020\rJ\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$ParsedServiceInput;", _UrlKt.FRAGMENT_ENCODE_SET, "url", _UrlKt.FRAGMENT_ENCODE_SET, "model", PluginsConstants.Settings.KEY, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "getModel", "getKey", "hasServiceFields", _UrlKt.FRAGMENT_ENCODE_SET, "differsFrom", "currentUrl", "currentModel", "currentKey", "TMessagesProj"}, m862k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ParsedServiceInput {
        private final String key;
        private final String model;
        private final String url;

        public ParsedServiceInput(String str, String str2, String str3) {
            this.url = str;
            this.model = str2;
            this.key = str3;
        }

        public final String getKey() {
            return this.key;
        }

        public final String getModel() {
            return this.model;
        }

        public final String getUrl() {
            return this.url;
        }

        public final boolean hasServiceFields() {
            return (TextUtils.isEmpty(this.url) && TextUtils.isEmpty(this.model)) ? false : true;
        }

        public final boolean differsFrom(String currentUrl, String currentModel, String currentKey) {
            String str = this.url;
            if (str != null && str.length() != 0 && !Intrinsics.areEqual(this.url, currentUrl)) {
                return true;
            }
            String str2 = this.model;
            if (str2 != null && str2.length() != 0 && !Intrinsics.areEqual(this.model, currentModel)) {
                return true;
            }
            String str3 = this.key;
            return (str3 == null || str3.length() == 0 || Intrinsics.areEqual(this.key, currentKey)) ? false : true;
        }
    }
}
