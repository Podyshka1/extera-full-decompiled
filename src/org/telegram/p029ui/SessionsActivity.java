package org.telegram.p029ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MrzRecognizer;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.CameraScanActivity;
import org.telegram.p029ui.Cells.CheckBoxCell;
import org.telegram.p029ui.Cells.HeaderCell;
import org.telegram.p029ui.Cells.RadioColorCell;
import org.telegram.p029ui.Cells.SessionCell;
import org.telegram.p029ui.Cells.TextCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Cells.TextSettingsCell;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EmptyTextProgressView;
import org.telegram.p029ui.Components.FlickerLoadingView;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.p029ui.Components.URLSpanNoUnderline;
import org.telegram.p029ui.Components.UndoView;
import org.telegram.p029ui.Components.voip.CellFlickerDrawable;
import org.telegram.p029ui.SessionBottomSheet;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_account;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public class SessionsActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private TLRPC.TL_authorization currentSession;
    private int currentSessionRow;
    private int currentSessionSectionRow;
    private int currentType;
    private Delegate delegate;
    private EmptyTextProgressView emptyView;
    private boolean fragmentOpened;
    private FlickerLoadingView globalFlickerLoadingView;
    private boolean highlightLinkDesktopDevice;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private boolean loading;
    private int noOtherSessionsRow;
    private int otherSessionsEndRow;
    private int otherSessionsSectionRow;
    private int otherSessionsStartRow;
    private int otherSessionsTerminateDetail;
    private int passwordSessionsDetailRow;
    private int passwordSessionsEndRow;
    private int passwordSessionsSectionRow;
    private int passwordSessionsStartRow;
    private int qrCodeDividerRow;
    private int qrCodeRow;
    private int rowCount;
    private int terminateAllSessionsDetailRow;

    @Keep
    private int terminateAllSessionsRow;
    private int ttlDays;
    private int ttlDivideRow;
    private int ttlHeaderRow;

    @Keep
    private int ttlRow;
    private UndoView undoView;
    private ArrayList sessions = new ArrayList();
    private ArrayList passwordSessions = new ArrayList();
    private int repeatLoad = 0;
    private final int VIEW_TYPE_TEXT = 0;
    private final int VIEW_TYPE_INFO = 1;
    private final int VIEW_TYPE_HEADER = 2;
    private final int VIEW_TYPE_SESSION = 4;
    private final int VIEW_TYPE_SCANQR = 5;
    private final int VIEW_TYPE_SETTINGS = 6;

    public interface Delegate {
        void sessionsLoaded();
    }

    /* JADX INFO: renamed from: $r8$lambda$90pTCq2z5mzzsAMa4yKKxo-jVJk, reason: not valid java name */
    public static /* synthetic */ void m18078$r8$lambda$90pTCq2z5mzzsAMa4yKKxojVJk(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public SessionsActivity(int i) {
        this.currentType = i;
    }

    public SessionsActivity setHighlightLinkDesktopDevice() {
        this.highlightLinkDesktopDevice = true;
        return this;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        updateRows();
        lambda$loadSessions$17(false);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.newSessionReceived);
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.newSessionReceived);
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        super.onTransitionAnimationEnd(z, z2);
        if (!z || z2) {
            return;
        }
        this.fragmentOpened = true;
        for (int i = 0; i < this.listView.getChildCount(); i++) {
            View childAt = this.listView.getChildAt(i);
            if (childAt instanceof ScanQRCodeView) {
                ((ScanQRCodeView) childAt).buttonTextView.invalidate();
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        this.globalFlickerLoadingView = flickerLoadingView;
        int i = 1;
        flickerLoadingView.setIsSingleCell(true);
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        if (this.currentType == 0) {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.Devices));
        } else {
            this.actionBar.setTitle(LocaleController.getString(C2888R.string.WebSessionsTitle));
        }
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.SessionsActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    SessionsActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        EmptyTextProgressView emptyTextProgressView = new EmptyTextProgressView(context);
        this.emptyView = emptyTextProgressView;
        emptyTextProgressView.showProgress();
        frameLayout.addView(this.emptyView, LayoutHelper.createFrame(-1, -1, 17));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.SessionsActivity.2
            @Override // org.telegram.p029ui.Components.RecyclerListView
            public Integer getSelectorColor(int i2) {
                if (i2 == SessionsActivity.this.terminateAllSessionsRow) {
                    return Integer.valueOf(Theme.multAlpha(getThemedColor(Theme.key_text_RedRegular), 0.1f));
                }
                return Integer.valueOf(getThemedColor(Theme.key_listSelector));
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.actionBar.setAdaptiveBackground(this.listView);
        this.listView.setLayoutManager(new LinearLayoutManager(context, i, false) { // from class: org.telegram.ui.SessionsActivity.3
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return true;
            }
        });
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setEmptyView(this.emptyView);
        this.listView.setAnimateEmptyView(true, 0);
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.listView.setAdapter(this.listAdapter);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setDurations(150L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        defaultItemAnimator.setMoveInterpolator(cubicBezierInterpolator);
        defaultItemAnimator.setTranslationInterpolator(cubicBezierInterpolator);
        this.listView.setItemAnimator(defaultItemAnimator);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                this.f$0.lambda$createView$13(view, i2);
            }
        });
        if (this.currentType == 0) {
            C66814 c66814 = new C66814(context);
            this.undoView = c66814;
            frameLayout.addView(c66814, LayoutHelper.createFrame(-1, -2.0f, 83, 8.0f, 0.0f, 8.0f, 8.0f));
        }
        updateRows();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(View view, final int i) {
        String firstName;
        CharSequence string;
        TLRPC.TL_authorization tL_authorization;
        String string2;
        boolean z = true;
        if (i == this.ttlRow) {
            if (getParentActivity() == null) {
                return;
            }
            int i2 = this.ttlDays;
            int i3 = i2 <= 7 ? 0 : i2 <= 93 ? 1 : i2 <= 183 ? 2 : 3;
            final AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString(C2888R.string.SessionsSelfDestruct));
            String[] strArr = {LocaleController.formatPluralString("Weeks", 1, new Object[0]), LocaleController.formatPluralString("Months", 3, new Object[0]), LocaleController.formatPluralString("Months", 6, new Object[0]), LocaleController.formatPluralString("Years", 1, new Object[0])};
            LinearLayout linearLayout = new LinearLayout(getParentActivity());
            linearLayout.setOrientation(1);
            builder.setView(linearLayout);
            int i4 = 0;
            while (i4 < 4) {
                RadioColorCell radioColorCell = new RadioColorCell(getParentActivity());
                radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
                radioColorCell.setTag(Integer.valueOf(i4));
                radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground), Theme.getColor(Theme.key_dialogRadioBackgroundChecked));
                radioColorCell.setTextAndValue(strArr[i4], i3 == i4);
                linearLayout.addView(radioColorCell);
                radioColorCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
                radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$1(builder, view2);
                    }
                });
                i4++;
            }
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            showDialog(builder.create());
            return;
        }
        if (i == this.terminateAllSessionsRow) {
            if (getParentActivity() == null) {
                return;
            }
            AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
            if (this.currentType == 0) {
                builder2.setMessage(LocaleController.getString(C2888R.string.AreYouSureSessions));
                builder2.setTitle(LocaleController.getString(C2888R.string.AreYouSureSessionsTitle));
                string2 = LocaleController.getString(C2888R.string.Terminate);
            } else {
                builder2.setMessage(LocaleController.getString(C2888R.string.AreYouSureWebSessions));
                builder2.setTitle(LocaleController.getString(C2888R.string.TerminateWebSessionsTitle));
                string2 = LocaleController.getString(C2888R.string.Disconnect);
            }
            builder2.setPositiveButton(string2, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda6
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i5) {
                    this.f$0.lambda$createView$6(alertDialog, i5);
                }
            });
            builder2.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            AlertDialog alertDialogCreate = builder2.create();
            showDialog(alertDialogCreate);
            TextView textView = (TextView) alertDialogCreate.getButton(-1);
            if (textView != null) {
                textView.setTextColor(Theme.getColor(Theme.key_text_RedBold));
                return;
            }
            return;
        }
        if (((i < this.otherSessionsStartRow || i >= this.otherSessionsEndRow) && ((i < this.passwordSessionsStartRow || i >= this.passwordSessionsEndRow) && i != this.currentSessionRow)) || getParentActivity() == null) {
            return;
        }
        if (this.currentType == 0) {
            if (i == this.currentSessionRow) {
                tL_authorization = this.currentSession;
            } else {
                int i5 = this.otherSessionsStartRow;
                if (i >= i5 && i < this.otherSessionsEndRow) {
                    tL_authorization = (TLRPC.TL_authorization) this.sessions.get(i - i5);
                } else {
                    tL_authorization = (TLRPC.TL_authorization) this.passwordSessions.get(i - this.passwordSessionsStartRow);
                }
                z = false;
            }
            showSessionBottomSheet(tL_authorization, z);
            return;
        }
        AlertDialog.Builder builder3 = new AlertDialog.Builder(getParentActivity());
        final boolean[] zArr = new boolean[1];
        if (this.currentType == 0) {
            builder3.setMessage(LocaleController.getString(C2888R.string.TerminateSessionText));
            builder3.setTitle(LocaleController.getString(C2888R.string.AreYouSureSessionTitle));
            string = LocaleController.getString(C2888R.string.Terminate);
        } else {
            TLRPC.TL_webAuthorization tL_webAuthorization = (TLRPC.TL_webAuthorization) this.sessions.get(i - this.otherSessionsStartRow);
            builder3.setMessage(LocaleController.formatString("TerminateWebSessionText", C2888R.string.TerminateWebSessionText, tL_webAuthorization.domain));
            builder3.setTitle(LocaleController.getString(C2888R.string.TerminateWebSessionTitle));
            CharSequence string3 = LocaleController.getString(C2888R.string.Disconnect);
            FrameLayout frameLayout = new FrameLayout(getParentActivity());
            TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(tL_webAuthorization.bot_id));
            if (user == null) {
                firstName = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                firstName = UserObject.getFirstName(user);
            }
            CheckBoxCell checkBoxCell = new CheckBoxCell(getParentActivity(), 1);
            checkBoxCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            checkBoxCell.setText(LocaleController.formatString("TerminateWebSessionStop", C2888R.string.TerminateWebSessionStop, firstName), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
            checkBoxCell.setPadding(LocaleController.isRTL ? AndroidUtilities.m1124dp(16.0f) : AndroidUtilities.m1124dp(8.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(8.0f) : AndroidUtilities.m1124dp(16.0f), 0);
            frameLayout.addView(checkBoxCell, LayoutHelper.createFrame(-1, 48.0f, 51, 0.0f, 0.0f, 0.0f, 0.0f));
            checkBoxCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SessionsActivity.$r8$lambda$X6LvHgPHI0vb8JZNkJ4cyiwyfkE(zArr, view2);
                }
            });
            builder3.setCustomViewOffset(16);
            builder3.setView(frameLayout);
            string = string3;
        }
        builder3.setPositiveButton(string, new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i6) {
                this.f$0.lambda$createView$12(i, zArr, alertDialog, i6);
            }
        });
        builder3.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        AlertDialog alertDialogCreate2 = builder3.create();
        showDialog(alertDialogCreate2);
        TextView textView2 = (TextView) alertDialogCreate2.getButton(-1);
        if (textView2 != null) {
            textView2.setTextColor(Theme.getColor(Theme.key_text_RedBold));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(AlertDialog.Builder builder, View view) {
        int i;
        builder.getDismissRunnable().run();
        Integer num = (Integer) view.getTag();
        if (num.intValue() == 0) {
            i = 7;
        } else if (num.intValue() == 1) {
            i = 90;
        } else if (num.intValue() == 2) {
            i = 183;
        } else {
            i = num.intValue() == 3 ? 365 : 0;
        }
        TL_account.setAuthorizationTTL setauthorizationttl = new TL_account.setAuthorizationTTL();
        setauthorizationttl.authorization_ttl_days = i;
        this.ttlDays = i;
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        getConnectionsManager().sendRequest(setauthorizationttl, new RequestDelegate() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda16
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                SessionsActivity.m18078$r8$lambda$90pTCq2z5mzzsAMa4yKKxojVJk(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(AlertDialog alertDialog, int i) {
        if (this.currentType == 0) {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC.TL_auth_resetAuthorizations(), new RequestDelegate() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda14
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$createView$3(tLObject, tL_error);
                }
            });
        } else {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.resetWebAuthorizations(), new RequestDelegate() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda15
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$createView$5(tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$2(tL_error, tLObject);
            }
        });
        for (int i = 0; i < 16; i++) {
            UserConfig userConfig = UserConfig.getInstance(i);
            if (userConfig.isClientActivated()) {
                userConfig.registeredForPush = false;
                userConfig.saveConfig(false);
                MessagesController.getInstance(i).registerForPush(SharedConfig.pushType, SharedConfig.pushString);
                ConnectionsManager.getInstance(i).setUserId(userConfig.getClientUserId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (getParentActivity() != null && tL_error == null && (tLObject instanceof TLRPC.TL_boolTrue)) {
            BulletinFactory.m1246of(this).createSimpleBulletin(C2888R.raw.contact_check, LocaleController.getString(C2888R.string.AllSessionsTerminated)).show();
            lambda$loadSessions$17(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$5(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$4(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (getParentActivity() == null) {
            return;
        }
        if (tL_error == null && (tLObject instanceof TLRPC.TL_boolTrue)) {
            BulletinFactory.m1246of(this).createSimpleBulletin(C2888R.raw.contact_check, LocaleController.getString(C2888R.string.AllWebSessionsTerminated)).show();
        } else {
            BulletinFactory.m1246of(this).createSimpleBulletin(C2888R.raw.error, LocaleController.getString(C2888R.string.UnknownError)).show();
        }
        lambda$loadSessions$17(false);
    }

    public static /* synthetic */ void $r8$lambda$X6LvHgPHI0vb8JZNkJ4cyiwyfkE(boolean[] zArr, View view) {
        if (view.isEnabled()) {
            boolean z = !zArr[0];
            zArr[0] = z;
            ((CheckBoxCell) view).setChecked(z, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(int i, boolean[] zArr, AlertDialog alertDialog, int i2) {
        final TLRPC.TL_authorization tL_authorization;
        if (getParentActivity() == null) {
            return;
        }
        final AlertDialog alertDialog2 = new AlertDialog(getParentActivity(), 3);
        alertDialog2.setCanCancel(false);
        alertDialog2.show();
        if (this.currentType == 0) {
            int i3 = this.otherSessionsStartRow;
            if (i >= i3 && i < this.otherSessionsEndRow) {
                tL_authorization = (TLRPC.TL_authorization) this.sessions.get(i - i3);
            } else {
                tL_authorization = (TLRPC.TL_authorization) this.passwordSessions.get(i - this.passwordSessionsStartRow);
            }
            TL_account.resetAuthorization resetauthorization = new TL_account.resetAuthorization();
            resetauthorization.hash = tL_authorization.hash;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(resetauthorization, new RequestDelegate() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda11
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$createView$9(alertDialog2, tL_authorization, tLObject, tL_error);
                }
            });
            return;
        }
        final TLRPC.TL_webAuthorization tL_webAuthorization = (TLRPC.TL_webAuthorization) this.sessions.get(i - this.otherSessionsStartRow);
        TL_account.resetWebAuthorization resetwebauthorization = new TL_account.resetWebAuthorization();
        resetwebauthorization.hash = tL_webAuthorization.hash;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(resetwebauthorization, new RequestDelegate() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda12
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$createView$11(alertDialog2, tL_webAuthorization, tLObject, tL_error);
            }
        });
        if (zArr[0]) {
            MessagesController.getInstance(this.currentAccount).blockPeer(tL_webAuthorization.bot_id);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(final AlertDialog alertDialog, final TLRPC.TL_authorization tL_authorization, TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$8(alertDialog, tL_error, tL_authorization);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(AlertDialog alertDialog, TLRPC.TL_error tL_error, TLRPC.TL_authorization tL_authorization) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        if (tL_error == null) {
            this.sessions.remove(tL_authorization);
            this.passwordSessions.remove(tL_authorization);
            updateRows();
            ListAdapter listAdapter = this.listAdapter;
            if (listAdapter != null) {
                listAdapter.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(final AlertDialog alertDialog, final TLRPC.TL_webAuthorization tL_webAuthorization, TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$10(alertDialog, tL_error, tL_webAuthorization);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(AlertDialog alertDialog, TLRPC.TL_error tL_error, TLRPC.TL_webAuthorization tL_webAuthorization) {
        try {
            alertDialog.dismiss();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        if (tL_error == null) {
            this.sessions.remove(tL_webAuthorization);
            updateRows();
            ListAdapter listAdapter = this.listAdapter;
            if (listAdapter != null) {
                listAdapter.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.SessionsActivity$4 */
    class C66814 extends UndoView {
        C66814(Context context) {
            super(context);
        }

        @Override // org.telegram.p029ui.Components.UndoView
        public void hide(boolean z, int i) {
            if (!z && getCurrentInfoObject() != null) {
                final TLRPC.TL_authorization tL_authorization = (TLRPC.TL_authorization) getCurrentInfoObject();
                TL_account.resetAuthorization resetauthorization = new TL_account.resetAuthorization();
                resetauthorization.hash = tL_authorization.hash;
                ConnectionsManager.getInstance(((BaseFragment) SessionsActivity.this).currentAccount).sendRequest(resetauthorization, new RequestDelegate() { // from class: org.telegram.ui.SessionsActivity$4$$ExternalSyntheticLambda0
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$hide$1(tL_authorization, tLObject, tL_error);
                    }
                });
            }
            super.hide(z, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$hide$1(final TLRPC.TL_authorization tL_authorization, TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$4$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$hide$0(tL_error, tL_authorization);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$hide$0(TLRPC.TL_error tL_error, TLRPC.TL_authorization tL_authorization) {
            if (tL_error == null) {
                SessionsActivity.this.sessions.remove(tL_authorization);
                SessionsActivity.this.passwordSessions.remove(tL_authorization);
                SessionsActivity.this.updateRows();
                if (SessionsActivity.this.listAdapter != null) {
                    SessionsActivity.this.listAdapter.notifyDataSetChanged();
                }
                SessionsActivity.this.lambda$loadSessions$17(true);
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.SessionsActivity$5 */
    class C66825 implements SessionBottomSheet.Callback {
        C66825() {
        }

        @Override // org.telegram.ui.SessionBottomSheet.Callback
        public void onSessionTerminated(final TLRPC.TL_authorization tL_authorization) {
            TL_account.resetAuthorization resetauthorization = new TL_account.resetAuthorization();
            resetauthorization.hash = tL_authorization.hash;
            ConnectionsManager.getInstance(((BaseFragment) SessionsActivity.this).currentAccount).sendRequest(resetauthorization, new RequestDelegate() { // from class: org.telegram.ui.SessionsActivity$5$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onSessionTerminated$1(tL_authorization, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSessionTerminated$1(final TLRPC.TL_authorization tL_authorization, TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$5$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSessionTerminated$0(tL_error, tL_authorization);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSessionTerminated$0(TLRPC.TL_error tL_error, TLRPC.TL_authorization tL_authorization) {
            if (tL_error == null) {
                SessionsActivity.this.sessions.remove(tL_authorization);
                SessionsActivity.this.passwordSessions.remove(tL_authorization);
                SessionsActivity.this.updateRows();
                if (SessionsActivity.this.listAdapter != null) {
                    SessionsActivity.this.listAdapter.notifyDataSetChanged();
                }
            }
        }
    }

    private void showSessionBottomSheet(TLRPC.TL_authorization tL_authorization, boolean z) {
        if (tL_authorization == null) {
            return;
        }
        new SessionBottomSheet(this, tL_authorization, z, new C66825()).show();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.hide(true, 0);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.hide(true, 0);
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.newSessionReceived) {
            lambda$loadSessions$17(true);
        }
    }

    /* JADX INFO: renamed from: loadSessions, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$loadSessions$17(final boolean z) {
        if (this.loading) {
            return;
        }
        if (!z) {
            this.loading = true;
        }
        if (this.currentType == 0) {
            ConnectionsManager.getInstance(this.currentAccount).bindRequestToGuid(ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getAuthorizations(), new RequestDelegate() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadSessions$16(z, tLObject, tL_error);
                }
            }), this.classGuid);
        } else {
            ConnectionsManager.getInstance(this.currentAccount).bindRequestToGuid(ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_account.getWebAuthorizations(), new RequestDelegate() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$loadSessions$19(z, tLObject, tL_error);
                }
            }), this.classGuid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSessions$16(final boolean z, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSessions$15(tL_error, tLObject, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSessions$15(TLRPC.TL_error tL_error, TLObject tLObject, final boolean z) {
        this.loading = false;
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.getItemCount();
        }
        if (tL_error == null) {
            this.sessions.clear();
            this.passwordSessions.clear();
            TL_account.authorizations authorizationsVar = (TL_account.authorizations) tLObject;
            int size = authorizationsVar.authorizations.size();
            for (int i = 0; i < size; i++) {
                TLRPC.TL_authorization tL_authorization = authorizationsVar.authorizations.get(i);
                if ((tL_authorization.flags & 1) != 0) {
                    this.currentSession = tL_authorization;
                } else if (tL_authorization.password_pending) {
                    this.passwordSessions.add(tL_authorization);
                } else {
                    this.sessions.add(tL_authorization);
                }
            }
            this.ttlDays = authorizationsVar.authorization_ttl_days;
            updateRows();
            Delegate delegate = this.delegate;
            if (delegate != null) {
                delegate.sessionsLoaded();
            }
        }
        ListAdapter listAdapter2 = this.listAdapter;
        if (listAdapter2 != null) {
            listAdapter2.notifyDataSetChanged();
        }
        Delegate delegate2 = this.delegate;
        if (delegate2 != null) {
            delegate2.sessionsLoaded();
        }
        int i2 = this.repeatLoad;
        if (i2 > 0) {
            int i3 = i2 - 1;
            this.repeatLoad = i3;
            if (i3 > 0) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$loadSessions$14(z);
                    }
                }, 2500L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSessions$19(final boolean z, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadSessions$18(tL_error, tLObject, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadSessions$18(TLRPC.TL_error tL_error, TLObject tLObject, final boolean z) {
        this.loading = false;
        if (tL_error == null) {
            this.sessions.clear();
            TL_account.webAuthorizations webauthorizations = (TL_account.webAuthorizations) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(webauthorizations.users, false);
            this.sessions.addAll(webauthorizations.authorizations);
            updateRows();
        }
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
        Delegate delegate = this.delegate;
        if (delegate != null) {
            delegate.sessionsLoaded();
        }
        int i = this.repeatLoad;
        if (i > 0) {
            int i2 = i - 1;
            this.repeatLoad = i2;
            if (i2 > 0) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$loadSessions$17(z);
                    }
                }, 2500L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRows() {
        this.rowCount = 0;
        this.currentSessionSectionRow = -1;
        this.currentSessionRow = -1;
        this.terminateAllSessionsRow = -1;
        this.terminateAllSessionsDetailRow = -1;
        this.passwordSessionsSectionRow = -1;
        this.passwordSessionsStartRow = -1;
        this.passwordSessionsEndRow = -1;
        this.passwordSessionsDetailRow = -1;
        this.otherSessionsSectionRow = -1;
        this.otherSessionsStartRow = -1;
        this.otherSessionsEndRow = -1;
        this.otherSessionsTerminateDetail = -1;
        this.noOtherSessionsRow = -1;
        this.qrCodeRow = -1;
        this.qrCodeDividerRow = -1;
        this.ttlHeaderRow = -1;
        this.ttlRow = -1;
        this.ttlDivideRow = -1;
        int i = this.currentType;
        if (i == 0) {
            this.qrCodeRow = 0;
            this.rowCount = 1 + 1;
            this.qrCodeDividerRow = 1;
        }
        if (this.loading) {
            if (i == 0) {
                int i2 = this.rowCount;
                this.currentSessionSectionRow = i2;
                this.rowCount = i2 + 2;
                this.currentSessionRow = i2 + 1;
                return;
            }
            return;
        }
        if (this.currentSession != null) {
            int i3 = this.rowCount;
            this.currentSessionSectionRow = i3;
            this.rowCount = i3 + 2;
            this.currentSessionRow = i3 + 1;
        }
        if (!this.passwordSessions.isEmpty() || !this.sessions.isEmpty()) {
            int i4 = this.rowCount;
            this.terminateAllSessionsRow = i4;
            this.rowCount = i4 + 2;
            this.terminateAllSessionsDetailRow = i4 + 1;
            this.noOtherSessionsRow = -1;
        } else {
            this.terminateAllSessionsRow = -1;
            this.terminateAllSessionsDetailRow = -1;
            if (this.currentType == 1 || this.currentSession != null) {
                int i5 = this.rowCount;
                this.rowCount = i5 + 1;
                this.noOtherSessionsRow = i5;
            } else {
                this.noOtherSessionsRow = -1;
            }
        }
        if (!this.passwordSessions.isEmpty()) {
            int i6 = this.rowCount;
            int i7 = i6 + 1;
            this.rowCount = i7;
            this.passwordSessionsSectionRow = i6;
            this.passwordSessionsStartRow = i7;
            int size = i7 + this.passwordSessions.size();
            this.passwordSessionsEndRow = size;
            this.rowCount = size + 1;
            this.passwordSessionsDetailRow = size;
        }
        if (!this.sessions.isEmpty()) {
            int i8 = this.rowCount;
            int i9 = i8 + 1;
            this.rowCount = i9;
            this.otherSessionsSectionRow = i8;
            this.otherSessionsStartRow = i9;
            this.otherSessionsEndRow = i9 + this.sessions.size();
            int size2 = this.rowCount + this.sessions.size();
            this.rowCount = size2 + 1;
            this.otherSessionsTerminateDetail = size2;
        }
        if (this.ttlDays > 0) {
            int i10 = this.rowCount;
            this.ttlHeaderRow = i10;
            this.ttlRow = i10 + 1;
            this.rowCount = i10 + 3;
            this.ttlDivideRow = i10 + 2;
        }
    }

    private class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
            setHasStableIds(true);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            if (adapterPosition == SessionsActivity.this.terminateAllSessionsRow) {
                return true;
            }
            if (adapterPosition < SessionsActivity.this.otherSessionsStartRow || adapterPosition >= SessionsActivity.this.otherSessionsEndRow) {
                return (adapterPosition >= SessionsActivity.this.passwordSessionsStartRow && adapterPosition < SessionsActivity.this.passwordSessionsEndRow) || adapterPosition == SessionsActivity.this.currentSessionRow || adapterPosition == SessionsActivity.this.ttlRow;
            }
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return SessionsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textCell;
            if (i == 0) {
                textCell = new TextCell(this.mContext);
            } else if (i == 1) {
                textCell = new TextInfoPrivacyCell(this.mContext);
            } else if (i == 2) {
                textCell = new HeaderCell(this.mContext);
            } else if (i == 5) {
                textCell = SessionsActivity.this.new ScanQRCodeView(this.mContext);
            } else if (i == 6) {
                textCell = new TextSettingsCell(this.mContext);
            } else {
                textCell = new SessionCell(this.mContext, SessionsActivity.this.currentType);
            }
            return new RecyclerListView.Holder(textCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String pluralString;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                TextCell textCell = (TextCell) viewHolder.itemView;
                if (i == SessionsActivity.this.terminateAllSessionsRow) {
                    int i2 = Theme.key_text_RedRegular;
                    textCell.setColors(i2, i2);
                    textCell.setTag(Integer.valueOf(i2));
                    if (SessionsActivity.this.currentType == 0) {
                        textCell.setTextAndIcon((CharSequence) LocaleController.getString(C2888R.string.TerminateAllSessions), C2888R.drawable.msg_block2, false);
                        return;
                    } else {
                        textCell.setTextAndIcon((CharSequence) LocaleController.getString(C2888R.string.TerminateAllWebSessions), C2888R.drawable.msg_block2, false);
                        return;
                    }
                }
                if (i == SessionsActivity.this.qrCodeRow) {
                    int i3 = Theme.key_windowBackgroundWhiteBlueText4;
                    textCell.setColors(i3, i3);
                    textCell.setTag(Integer.valueOf(i3));
                    textCell.setTextAndIcon(LocaleController.getString(C2888R.string.AuthAnotherClient), C2888R.drawable.msg_qrcode, true ^ SessionsActivity.this.sessions.isEmpty());
                    return;
                }
                return;
            }
            if (itemViewType == 1) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                textInfoPrivacyCell.setFixedSize(0);
                if (i == SessionsActivity.this.terminateAllSessionsDetailRow) {
                    if (SessionsActivity.this.currentType == 0) {
                        textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.ClearOtherSessionsHelp));
                        return;
                    } else {
                        textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.ClearOtherWebSessionsHelp));
                        return;
                    }
                }
                if (i == SessionsActivity.this.otherSessionsTerminateDetail) {
                    if (SessionsActivity.this.currentType == 0) {
                        if (SessionsActivity.this.sessions.isEmpty()) {
                            textInfoPrivacyCell.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                            return;
                        } else {
                            textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.SessionsListInfo));
                            return;
                        }
                    }
                    textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.TerminateWebSessionInfo));
                    return;
                }
                if (i == SessionsActivity.this.passwordSessionsDetailRow) {
                    textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.LoginAttemptsInfo));
                    return;
                } else {
                    if (i == SessionsActivity.this.qrCodeDividerRow || i == SessionsActivity.this.ttlDivideRow || i == SessionsActivity.this.noOtherSessionsRow) {
                        textInfoPrivacyCell.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                        textInfoPrivacyCell.setFixedSize(12);
                        return;
                    }
                    return;
                }
            }
            if (itemViewType == 2) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                if (i == SessionsActivity.this.currentSessionSectionRow) {
                    headerCell.setText(LocaleController.getString(C2888R.string.CurrentSession));
                    return;
                }
                if (i == SessionsActivity.this.otherSessionsSectionRow) {
                    if (SessionsActivity.this.currentType == 0) {
                        headerCell.setText(LocaleController.getString(C2888R.string.OtherSessions));
                        return;
                    } else {
                        headerCell.setText(LocaleController.getString(C2888R.string.OtherWebSessions));
                        return;
                    }
                }
                if (i == SessionsActivity.this.passwordSessionsSectionRow) {
                    headerCell.setText(LocaleController.getString(C2888R.string.LoginAttempts));
                    return;
                } else {
                    if (i == SessionsActivity.this.ttlHeaderRow) {
                        headerCell.setText(LocaleController.getString(C2888R.string.TerminateOldSessionHeader));
                        return;
                    }
                    return;
                }
            }
            if (itemViewType != 5) {
                if (itemViewType == 6) {
                    TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                    if (SessionsActivity.this.ttlDays > 30 && SessionsActivity.this.ttlDays <= 183) {
                        pluralString = LocaleController.formatPluralString("Months", SessionsActivity.this.ttlDays / 30, new Object[0]);
                    } else if (SessionsActivity.this.ttlDays == 365) {
                        pluralString = LocaleController.formatPluralString("Years", SessionsActivity.this.ttlDays / 365, new Object[0]);
                    } else {
                        pluralString = LocaleController.formatPluralString("Weeks", SessionsActivity.this.ttlDays / 7, new Object[0]);
                    }
                    textSettingsCell.setTextAndValue(LocaleController.getString(C2888R.string.IfInactiveFor), pluralString, true, false);
                    return;
                }
                SessionCell sessionCell = (SessionCell) viewHolder.itemView;
                if (i == SessionsActivity.this.currentSessionRow) {
                    if (SessionsActivity.this.currentSession == null) {
                        sessionCell.showStub(SessionsActivity.this.globalFlickerLoadingView);
                        return;
                    }
                    TLRPC.TL_authorization tL_authorization = SessionsActivity.this.currentSession;
                    if (SessionsActivity.this.sessions.isEmpty() && SessionsActivity.this.passwordSessions.isEmpty() && SessionsActivity.this.qrCodeRow == -1) {
                        z = false;
                    }
                    sessionCell.setSession(tL_authorization, z);
                    return;
                }
                if (i >= SessionsActivity.this.otherSessionsStartRow && i < SessionsActivity.this.otherSessionsEndRow) {
                    sessionCell.setSession((TLObject) SessionsActivity.this.sessions.get(i - SessionsActivity.this.otherSessionsStartRow), i != SessionsActivity.this.otherSessionsEndRow - 1);
                } else {
                    if (i < SessionsActivity.this.passwordSessionsStartRow || i >= SessionsActivity.this.passwordSessionsEndRow) {
                        return;
                    }
                    sessionCell.setSession((TLObject) SessionsActivity.this.passwordSessions.get(i - SessionsActivity.this.passwordSessionsStartRow), i != SessionsActivity.this.passwordSessionsEndRow - 1);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:66:0x0205  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public long getItemId(int i) {
            int iHash;
            if (i == SessionsActivity.this.terminateAllSessionsRow) {
                iHash = Objects.hash(0, 0);
            } else if (i == SessionsActivity.this.terminateAllSessionsDetailRow) {
                iHash = Objects.hash(0, 1);
            } else if (i == SessionsActivity.this.otherSessionsTerminateDetail) {
                iHash = Objects.hash(0, 2);
            } else if (i == SessionsActivity.this.passwordSessionsDetailRow) {
                iHash = Objects.hash(0, 3);
            } else if (i == SessionsActivity.this.qrCodeDividerRow) {
                iHash = Objects.hash(0, 4);
            } else if (i == SessionsActivity.this.ttlDivideRow) {
                iHash = Objects.hash(0, 5);
            } else if (i == SessionsActivity.this.noOtherSessionsRow) {
                iHash = Objects.hash(0, 6);
            } else if (i == SessionsActivity.this.currentSessionSectionRow) {
                iHash = Objects.hash(0, 7);
            } else if (i == SessionsActivity.this.otherSessionsSectionRow) {
                iHash = Objects.hash(0, 8);
            } else if (i == SessionsActivity.this.passwordSessionsSectionRow) {
                iHash = Objects.hash(0, 9);
            } else if (i == SessionsActivity.this.ttlHeaderRow) {
                iHash = Objects.hash(0, 10);
            } else if (i == SessionsActivity.this.currentSessionRow) {
                iHash = Objects.hash(0, 11);
            } else if (i >= SessionsActivity.this.otherSessionsStartRow && i < SessionsActivity.this.otherSessionsEndRow) {
                TLObject tLObject = (TLObject) SessionsActivity.this.sessions.get(i - SessionsActivity.this.otherSessionsStartRow);
                if (tLObject instanceof TLRPC.TL_authorization) {
                    iHash = Objects.hash(1, Long.valueOf(((TLRPC.TL_authorization) tLObject).hash));
                } else if (tLObject instanceof TLRPC.TL_webAuthorization) {
                    iHash = Objects.hash(1, Long.valueOf(((TLRPC.TL_webAuthorization) tLObject).hash));
                }
            } else if (i >= SessionsActivity.this.passwordSessionsStartRow && i < SessionsActivity.this.passwordSessionsEndRow) {
                TLObject tLObject2 = (TLObject) SessionsActivity.this.passwordSessions.get(i - SessionsActivity.this.passwordSessionsStartRow);
                if (tLObject2 instanceof TLRPC.TL_authorization) {
                    iHash = Objects.hash(2, Long.valueOf(((TLRPC.TL_authorization) tLObject2).hash));
                } else if (tLObject2 instanceof TLRPC.TL_webAuthorization) {
                    iHash = Objects.hash(2, Long.valueOf(((TLRPC.TL_webAuthorization) tLObject2).hash));
                }
            } else if (i == SessionsActivity.this.qrCodeRow) {
                iHash = Objects.hash(0, 12);
            } else {
                iHash = i == SessionsActivity.this.ttlRow ? Objects.hash(0, 13) : Objects.hash(0, -1);
            }
            return iHash;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == SessionsActivity.this.terminateAllSessionsRow) {
                return 0;
            }
            if (i == SessionsActivity.this.terminateAllSessionsDetailRow || i == SessionsActivity.this.otherSessionsTerminateDetail || i == SessionsActivity.this.passwordSessionsDetailRow || i == SessionsActivity.this.qrCodeDividerRow || i == SessionsActivity.this.ttlDivideRow || i == SessionsActivity.this.noOtherSessionsRow) {
                return 1;
            }
            if (i == SessionsActivity.this.currentSessionSectionRow || i == SessionsActivity.this.otherSessionsSectionRow || i == SessionsActivity.this.passwordSessionsSectionRow || i == SessionsActivity.this.ttlHeaderRow) {
                return 2;
            }
            if (i == SessionsActivity.this.currentSessionRow) {
                return 4;
            }
            if (i >= SessionsActivity.this.otherSessionsStartRow && i < SessionsActivity.this.otherSessionsEndRow) {
                return 4;
            }
            if (i >= SessionsActivity.this.passwordSessionsStartRow && i < SessionsActivity.this.passwordSessionsEndRow) {
                return 4;
            }
            if (i == SessionsActivity.this.qrCodeRow) {
                return 5;
            }
            return i == SessionsActivity.this.ttlRow ? 6 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ScanQRCodeView extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
        ButtonWithCounterView buttonTextView;
        CellFlickerDrawable flickerDrawable;
        BackupImageView imageView;
        TextView textView;

        public ScanQRCodeView(Context context) {
            super(context);
            this.flickerDrawable = new CellFlickerDrawable();
            BackupImageView backupImageView = new BackupImageView(context);
            this.imageView = backupImageView;
            addView(backupImageView, LayoutHelper.createFrame(120, 120.0f, 1, 0.0f, 16.0f, 0.0f, 0.0f));
            CellFlickerDrawable cellFlickerDrawable = this.flickerDrawable;
            cellFlickerDrawable.repeatEnabled = false;
            cellFlickerDrawable.animationSpeedScale = 1.2f;
            this.imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionsActivity.ScanQRCodeView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (ScanQRCodeView.this.imageView.getImageReceiver().getLottieAnimation() == null || ScanQRCodeView.this.imageView.getImageReceiver().getLottieAnimation().isRunning()) {
                        return;
                    }
                    ScanQRCodeView.this.imageView.getImageReceiver().getLottieAnimation().setCurrentFrame(0, false);
                    ScanQRCodeView.this.imageView.getImageReceiver().getLottieAnimation().restart();
                }
            });
            int i = Theme.key_windowBackgroundWhiteBlackText;
            Theme.getColor(i);
            int i2 = Theme.key_windowBackgroundWhite;
            Theme.getColor(i2);
            Theme.getColor(Theme.key_featuredStickers_addButton);
            Theme.getColor(i2);
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
            this.textView = linksTextView;
            addView(linksTextView, LayoutHelper.createFrame(-1, -2.0f, 0, 36.0f, 152.0f, 36.0f, 0.0f));
            this.textView.setGravity(1);
            this.textView.setTextColor(Theme.getColor(i));
            this.textView.setTextSize(1, 15.0f);
            this.textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
            this.textView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText));
            this.textView.setHighlightColor(Theme.getColor(Theme.key_windowBackgroundWhiteLinkSelection));
            String string = LocaleController.getString(C2888R.string.AuthAnotherClientInfo4);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
            int iIndexOf = string.indexOf(42);
            int i3 = iIndexOf + 1;
            int iIndexOf2 = string.indexOf(42, i3);
            if (iIndexOf != -1 && iIndexOf2 != -1 && iIndexOf != iIndexOf2) {
                this.textView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                spannableStringBuilder.replace(iIndexOf2, iIndexOf2 + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                spannableStringBuilder.replace(iIndexOf, i3, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                spannableStringBuilder.setSpan(new URLSpanNoUnderline(LocaleController.getString(C2888R.string.AuthAnotherClientDownloadClientUrl)), iIndexOf, iIndexOf2 - 1, 33);
            }
            String string2 = spannableStringBuilder.toString();
            int iIndexOf3 = string2.indexOf(42);
            int i4 = iIndexOf3 + 1;
            int iIndexOf4 = string2.indexOf(42, i4);
            if (iIndexOf3 != -1 && iIndexOf4 != -1 && iIndexOf3 != iIndexOf4) {
                this.textView.setMovementMethod(new AndroidUtilities.LinkMovementMethodMy());
                spannableStringBuilder.replace(iIndexOf4, iIndexOf4 + 1, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                spannableStringBuilder.replace(iIndexOf3, i4, (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET);
                spannableStringBuilder.setSpan(new URLSpanNoUnderline(LocaleController.getString(C2888R.string.AuthAnotherWebClientUrl)), iIndexOf3, iIndexOf4 - 1, 33);
            }
            this.textView.setText(spannableStringBuilder);
            this.buttonTextView = new ButtonWithCounterView(context, ((BaseFragment) SessionsActivity.this).resourceProvider);
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
            spannableStringBuilder2.append((CharSequence) ".  ").append((CharSequence) LocaleController.getString(C2888R.string.LinkDesktopDevice));
            spannableStringBuilder2.setSpan(new ColoredImageSpan(ContextCompat.getDrawable(getContext(), C2888R.drawable.msg_mini_qr)), 0, 1, 0);
            this.buttonTextView.setText(spannableStringBuilder2, false);
            this.buttonTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.SessionsActivity$ScanQRCodeView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(view);
                }
            });
            addView(this.buttonTextView, LayoutHelper.createFrame(-1, 48.0f, 80, 16.0f, 15.0f, 16.0f, 16.0f));
            setSticker();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            if (SessionsActivity.this.getParentActivity() == null) {
                return;
            }
            if (SessionsActivity.this.getParentActivity().checkSelfPermission("android.permission.CAMERA") != 0) {
                SessionsActivity.this.getParentActivity().requestPermissions(new String[]{"android.permission.CAMERA"}, 34);
            } else {
                SessionsActivity.this.openCameraScanActivity();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(276.0f), TLObject.FLAG_30));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            setSticker();
            NotificationCenter.getInstance(((BaseFragment) SessionsActivity.this).currentAccount).addObserver(this, NotificationCenter.diceStickersDidLoad);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            NotificationCenter.getInstance(((BaseFragment) SessionsActivity.this).currentAccount).removeObserver(this, NotificationCenter.diceStickersDidLoad);
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.diceStickersDidLoad && AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME.equals((String) objArr[0])) {
                setSticker();
            }
        }

        private void setSticker() {
            TLRPC.TL_messages_stickerSet stickerSetByName = MediaDataController.getInstance(((BaseFragment) SessionsActivity.this).currentAccount).getStickerSetByName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME);
            if (stickerSetByName == null) {
                stickerSetByName = MediaDataController.getInstance(((BaseFragment) SessionsActivity.this).currentAccount).getStickerSetByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME);
            }
            TLRPC.TL_messages_stickerSet tL_messages_stickerSet = stickerSetByName;
            TLRPC.Document document = (tL_messages_stickerSet == null || tL_messages_stickerSet.documents.size() <= 6) ? null : (TLRPC.Document) tL_messages_stickerSet.documents.get(6);
            SvgHelper.SvgDrawable svgThumb = document != null ? DocumentObject.getSvgThumb(document.thumbs, Theme.key_emptyListPlaceholder, 0.2f) : null;
            if (svgThumb != null) {
                svgThumb.overrideWidthAndHeight(512, 512);
            }
            if (document == null) {
                MediaDataController.getInstance(((BaseFragment) SessionsActivity.this).currentAccount).loadStickersByEmojiOrName(AndroidUtilities.STICKERS_PLACEHOLDER_PACK_NAME, false, tL_messages_stickerSet == null);
            } else {
                this.imageView.setImage(ImageLocation.getForDocument(document), "130_130", "tgs", svgThumb, tL_messages_stickerSet);
                this.imageView.getImageReceiver().setAutoRepeat(2);
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.SessionsActivity$6 */
    class C66836 implements CameraScanActivity.CameraScanActivityDelegate {
        private TLObject response = null;
        private TLRPC.TL_error error = null;

        @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
        public /* synthetic */ void didFindMrzInfo(MrzRecognizer.Result result) {
            CameraScanActivity.CameraScanActivityDelegate.CC.$default$didFindMrzInfo(this, result);
        }

        @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
        public /* synthetic */ String getSubtitleText() {
            return CameraScanActivity.CameraScanActivityDelegate.CC.$default$getSubtitleText(this);
        }

        @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
        public /* synthetic */ void onDismiss() {
            CameraScanActivity.CameraScanActivityDelegate.CC.$default$onDismiss(this);
        }

        C66836() {
        }

        @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
        public void didFindQr(String str) {
            TLObject tLObject = this.response;
            if (tLObject instanceof TLRPC.TL_authorization) {
                TLRPC.TL_authorization tL_authorization = (TLRPC.TL_authorization) tLObject;
                if (((TLRPC.TL_authorization) tLObject).password_pending) {
                    SessionsActivity.this.passwordSessions.add(0, tL_authorization);
                    SessionsActivity.this.repeatLoad = 4;
                    SessionsActivity.this.lambda$loadSessions$17(false);
                } else {
                    SessionsActivity.this.sessions.add(0, tL_authorization);
                }
                SessionsActivity.this.updateRows();
                SessionsActivity.this.listAdapter.notifyDataSetChanged();
                SessionsActivity.this.undoView.showWithAction(0L, 11, this.response);
                return;
            }
            if (this.error != null) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$6$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$didFindQr$0();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFindQr$0() {
            String string;
            String str = this.error.text;
            if (str != null && str.equals("AUTH_TOKEN_EXCEPTION")) {
                string = LocaleController.getString(C2888R.string.AccountAlreadyLoggedIn);
            } else {
                string = LocaleController.getString(C2888R.string.ErrorOccurred) + "\n" + this.error.text;
            }
            AlertsCreator.showSimpleAlert(SessionsActivity.this, LocaleController.getString(C2888R.string.AuthAnotherClient), string);
        }

        @Override // org.telegram.ui.CameraScanActivity.CameraScanActivityDelegate
        public boolean processQr(final String str, final Runnable runnable) {
            this.response = null;
            this.error = null;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$6$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processQr$4(str, runnable);
                }
            }, 750L);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processQr$4(String str, final Runnable runnable) {
            try {
                byte[] bArrDecode = Base64.decode(str.substring(17).replaceAll("\\/", "_").replaceAll("\\+", "-"), 8);
                TLRPC.TL_auth_acceptLoginToken tL_auth_acceptLoginToken = new TLRPC.TL_auth_acceptLoginToken();
                tL_auth_acceptLoginToken.token = bArrDecode;
                SessionsActivity.this.getConnectionsManager().sendRequest(tL_auth_acceptLoginToken, new RequestDelegate() { // from class: org.telegram.ui.SessionsActivity$6$$ExternalSyntheticLambda3
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$processQr$2(runnable, tLObject, tL_error);
                    }
                });
            } catch (Exception e) {
                FileLog.m1135e("Failed to pass qr code auth", e);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$6$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$processQr$3();
                    }
                });
                runnable.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processQr$2(final Runnable runnable, final TLObject tLObject, final TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.SessionsActivity$6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processQr$1(tLObject, tL_error, runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processQr$1(TLObject tLObject, TLRPC.TL_error tL_error, Runnable runnable) {
            this.response = tLObject;
            this.error = tL_error;
            runnable.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processQr$3() {
            AlertsCreator.showSimpleAlert(SessionsActivity.this, LocaleController.getString(C2888R.string.AuthAnotherClient), LocaleController.getString(C2888R.string.ErrorOccurred));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCameraScanActivity() {
        CameraScanActivity.showAsSheet((BaseFragment) this, false, 2, (CameraScanActivity.CameraScanActivityDelegate) new C66836());
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, HeaderCell.class, SessionCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, Theme.key_progressCircle));
        int i = Theme.key_text_RedRegular;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueText4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, Theme.key_windowBackgroundGrayShadow));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SessionCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{SessionCell.class}, new String[]{"onlineTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        int i3 = Theme.key_windowBackgroundWhiteGrayText3;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKTAG, new Class[]{SessionCell.class}, new String[]{"onlineTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SessionCell.class}, new String[]{"detailTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i2));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{SessionCell.class}, new String[]{"detailExTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_undo_background));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        int i4 = Theme.key_undo_infoColor;
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"infoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"textPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"progressPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{UndoView.class}, new String[]{"leftImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        return arrayList;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        if (getParentActivity() != null && i == 34) {
            if (iArr.length > 0 && iArr[0] == 0) {
                openCameraScanActivity();
            } else {
                new AlertDialog.Builder(getParentActivity()).setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.QRCodePermissionNoCameraWithHint))).setPositiveButton(LocaleController.getString(C2888R.string.PermissionOpenSettings), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda3
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i2) {
                        this.f$0.lambda$onRequestPermissionsResultFragment$20(alertDialog, i2);
                    }
                }).setNegativeButton(LocaleController.getString(C2888R.string.ContactsPermissionAlertNotNow), null).setTopAnimation(C2888R.raw.permission_request_camera, 72, false, Theme.getColor(Theme.key_dialogTopBackground)).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onRequestPermissionsResultFragment$20(AlertDialog alertDialog, int i) {
        try {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + ApplicationLoader.applicationContext.getPackageName()));
            getParentActivity().startActivity(intent);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public int getSessionsCount() {
        if (this.sessions.size() == 0 && this.loading) {
            return 0;
        }
        return this.sessions.size() + (this.currentType == 0 ? 1 : 0);
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        this.listView.setPadding(0, 0, 0, i4);
        this.listView.setClipToPadding(false);
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.setTranslationY(-i4);
        }
    }
}
