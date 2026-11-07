package androidx.car.app.model;

import androidx.car.app.utils.CollectionUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public final class TemplateWrapper {
    private int mCurrentTaskStep;
    private String mId;
    private boolean mIsRefresh;
    private Template mTemplate;
    private List<TemplateInfo> mTemplateInfoForScreenStack;

    public static TemplateWrapper wrap(Template template) {
        return wrap(template, createRandomId());
    }

    public static TemplateWrapper wrap(Template template, String str) {
        Objects.requireNonNull(template);
        Objects.requireNonNull(str);
        return new TemplateWrapper(template, str);
    }

    public Template getTemplate() {
        Template template = this.mTemplate;
        Objects.requireNonNull(template);
        return template;
    }

    public String getId() {
        String str = this.mId;
        Objects.requireNonNull(str);
        return str;
    }

    public void setTemplateInfosForScreenStack(List<TemplateInfo> list) {
        this.mTemplateInfoForScreenStack = list;
    }

    public List<TemplateInfo> getTemplateInfosForScreenStack() {
        return CollectionUtils.emptyIfNull(this.mTemplateInfoForScreenStack);
    }

    public int getCurrentTaskStep() {
        return this.mCurrentTaskStep;
    }

    public void setCurrentTaskStep(int i) {
        this.mCurrentTaskStep = i;
    }

    public void setRefresh(boolean z) {
        this.mIsRefresh = z;
    }

    public boolean isRefresh() {
        return this.mIsRefresh;
    }

    public void setTemplate(Template template) {
        this.mTemplate = template;
    }

    public void setId(String str) {
        this.mId = str;
    }

    public static TemplateWrapper copyOf(TemplateWrapper templateWrapper) {
        TemplateWrapper templateWrapperWrap = wrap(templateWrapper.getTemplate(), templateWrapper.getId());
        templateWrapperWrap.setRefresh(templateWrapper.isRefresh());
        templateWrapperWrap.setCurrentTaskStep(templateWrapper.getCurrentTaskStep());
        List<TemplateInfo> templateInfosForScreenStack = templateWrapper.getTemplateInfosForScreenStack();
        if (templateInfosForScreenStack != null) {
            templateWrapperWrap.setTemplateInfosForScreenStack(templateInfosForScreenStack);
        }
        return templateWrapperWrap;
    }

    public String toString() {
        return "[template: " + this.mTemplate + ", ID: " + this.mId + "]";
    }

    private TemplateWrapper(Template template, String str) {
        this.mTemplateInfoForScreenStack = new ArrayList();
        this.mTemplate = template;
        this.mId = str;
    }

    private TemplateWrapper() {
        this.mTemplateInfoForScreenStack = new ArrayList();
        this.mTemplate = null;
        this.mId = _UrlKt.FRAGMENT_ENCODE_SET;
    }

    private static String createRandomId() {
        return UUID.randomUUID().toString();
    }
}
