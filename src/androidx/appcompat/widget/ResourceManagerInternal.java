package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.resources.R$drawable;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes3.dex */
public final class ResourceManagerInternal {
    private static ResourceManagerInternal INSTANCE;
    private SimpleArrayMap<String, Object> mDelegates;
    private final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> mDrawableCaches = new WeakHashMap<>(0);
    private boolean mHasCheckedVectorDrawableSetup;
    private ResourceManagerHooks mHooks;
    private SparseArrayCompat<String> mKnownDrawableIdTags;
    private WeakHashMap<Context, SparseArrayCompat<ColorStateList>> mTintLists;
    private TypedValue mTypedValue;
    private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    private static final ColorFilterLruCache COLOR_FILTER_CACHE = new ColorFilterLruCache(6);

    public interface ResourceManagerHooks {
        Drawable createDrawableFor(ResourceManagerInternal resourceManagerInternal, Context context, int i);

        ColorStateList getTintListForDrawableRes(Context context, int i);

        PorterDuff.Mode getTintModeForDrawableRes(int i);

        boolean tintDrawable(Context context, int i, Drawable drawable);

        boolean tintDrawableUsingColorFilter(Context context, int i, Drawable drawable);
    }

    private static void installDefaultInflateDelegates(ResourceManagerInternal resourceManagerInternal) {
    }

    public static synchronized ResourceManagerInternal get() {
        try {
            if (INSTANCE == null) {
                ResourceManagerInternal resourceManagerInternal = new ResourceManagerInternal();
                INSTANCE = resourceManagerInternal;
                installDefaultInflateDelegates(resourceManagerInternal);
            }
        } catch (Throwable th) {
            throw th;
        }
        return INSTANCE;
    }

    public synchronized void setHooks(ResourceManagerHooks resourceManagerHooks) {
        this.mHooks = resourceManagerHooks;
    }

    public synchronized Drawable getDrawable(Context context, int i) {
        return getDrawable(context, i, false);
    }

    public synchronized Drawable getDrawable(Context context, int i, boolean z) {
        Drawable drawableLoadDrawableFromDelegates;
        try {
            checkVectorDrawableSetup(context);
            drawableLoadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
            if (drawableLoadDrawableFromDelegates == null) {
                drawableLoadDrawableFromDelegates = createDrawableIfNeeded(context, i);
            }
            if (drawableLoadDrawableFromDelegates == null) {
                drawableLoadDrawableFromDelegates = ContextCompat.getDrawable(context, i);
            }
            if (drawableLoadDrawableFromDelegates != null) {
                drawableLoadDrawableFromDelegates = tintDrawable(context, i, z, drawableLoadDrawableFromDelegates);
            }
            if (drawableLoadDrawableFromDelegates != null) {
                DrawableUtils.fixDrawable(drawableLoadDrawableFromDelegates);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawableLoadDrawableFromDelegates;
    }

    public synchronized void onConfigurationChanged(Context context) {
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    private static long createCacheKey(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    private Drawable createDrawableIfNeeded(Context context, int i) {
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        context.getResources().getValue(i, typedValue, true);
        long jCreateCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, jCreateCacheKey);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        Drawable drawableCreateDrawableFor = resourceManagerHooks == null ? null : resourceManagerHooks.createDrawableFor(this, context, i);
        if (drawableCreateDrawableFor != null) {
            drawableCreateDrawableFor.setChangingConfigurations(typedValue.changingConfigurations);
            addDrawableToCache(context, jCreateCacheKey, drawableCreateDrawableFor);
        }
        return drawableCreateDrawableFor;
    }

    private Drawable tintDrawable(Context context, int i, boolean z, Drawable drawable) {
        ColorStateList tintList = getTintList(context, i);
        if (tintList != null) {
            Drawable drawableWrap = DrawableCompat.wrap(drawable.mutate());
            DrawableCompat.setTintList(drawableWrap, tintList);
            PorterDuff.Mode tintMode = getTintMode(i);
            if (tintMode != null) {
                DrawableCompat.setTintMode(drawableWrap, tintMode);
            }
            return drawableWrap;
        }
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        if ((resourceManagerHooks == null || !resourceManagerHooks.tintDrawable(context, i, drawable)) && !tintDrawableUsingColorFilter(context, i, drawable) && z) {
            return null;
        }
        return drawable;
    }

    private Drawable loadDrawableFromDelegates(Context context, int i) {
        int next;
        SimpleArrayMap<String, Object> simpleArrayMap = this.mDelegates;
        if (simpleArrayMap == null || simpleArrayMap.isEmpty()) {
            return null;
        }
        SparseArrayCompat<String> sparseArrayCompat = this.mKnownDrawableIdTags;
        if (sparseArrayCompat != null) {
            String str = sparseArrayCompat.get(i);
            if ("appcompat_skip_skip".equals(str) || (str != null && this.mDelegates.get(str) == null)) {
                return null;
            }
        } else {
            this.mKnownDrawableIdTags = new SparseArrayCompat<>();
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long jCreateCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, jCreateCacheKey);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i);
                Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.mKnownDrawableIdTags.append(i, name);
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.mDelegates.get(name));
                if (cachedDrawable != null) {
                    cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
                    addDrawableToCache(context, jCreateCacheKey, cachedDrawable);
                }
            } catch (Exception e) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
            }
        }
        if (cachedDrawable == null) {
            this.mKnownDrawableIdTags.append(i, "appcompat_skip_skip");
        }
        return cachedDrawable;
    }

    private synchronized Drawable getCachedDrawable(Context context, long j) {
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
        if (longSparseArray == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReference = longSparseArray.get(j);
        if (weakReference != null) {
            Drawable.ConstantState constantState = weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            longSparseArray.remove(j);
        }
        return null;
    }

    private synchronized boolean addDrawableToCache(Context context, long j, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null) {
                return false;
            }
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            if (longSparseArray == null) {
                longSparseArray = new LongSparseArray<>();
                this.mDrawableCaches.put(context, longSparseArray);
            }
            longSparseArray.put(j, new WeakReference<>(constantState));
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized Drawable onDrawableLoadedFromResources(Context context, VectorEnabledTintResources vectorEnabledTintResources, int i) {
        try {
            Drawable drawableLoadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
            if (drawableLoadDrawableFromDelegates == null) {
                drawableLoadDrawableFromDelegates = vectorEnabledTintResources.getDrawableCanonical(i);
            }
            if (drawableLoadDrawableFromDelegates == null) {
                return null;
            }
            return tintDrawable(context, i, false, drawableLoadDrawableFromDelegates);
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean tintDrawableUsingColorFilter(Context context, int i, Drawable drawable) {
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        return resourceManagerHooks != null && resourceManagerHooks.tintDrawableUsingColorFilter(context, i, drawable);
    }

    public PorterDuff.Mode getTintMode(int i) {
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        if (resourceManagerHooks == null) {
            return null;
        }
        return resourceManagerHooks.getTintModeForDrawableRes(i);
    }

    public synchronized ColorStateList getTintList(Context context, int i) {
        ColorStateList tintListFromCache;
        tintListFromCache = getTintListFromCache(context, i);
        if (tintListFromCache == null) {
            ResourceManagerHooks resourceManagerHooks = this.mHooks;
            tintListFromCache = resourceManagerHooks == null ? null : resourceManagerHooks.getTintListForDrawableRes(context, i);
            if (tintListFromCache != null) {
                addTintListToCache(context, i, tintListFromCache);
            }
        }
        return tintListFromCache;
    }

    private ColorStateList getTintListFromCache(Context context, int i) {
        SparseArrayCompat<ColorStateList> sparseArrayCompat;
        WeakHashMap<Context, SparseArrayCompat<ColorStateList>> weakHashMap = this.mTintLists;
        if (weakHashMap == null || (sparseArrayCompat = weakHashMap.get(context)) == null) {
            return null;
        }
        return sparseArrayCompat.get(i);
    }

    private void addTintListToCache(Context context, int i, ColorStateList colorStateList) {
        if (this.mTintLists == null) {
            this.mTintLists = new WeakHashMap<>();
        }
        SparseArrayCompat<ColorStateList> sparseArrayCompat = this.mTintLists.get(context);
        if (sparseArrayCompat == null) {
            sparseArrayCompat = new SparseArrayCompat<>();
            this.mTintLists.put(context, sparseArrayCompat);
        }
        sparseArrayCompat.append(i, colorStateList);
    }

    public static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int i) {
            super(i);
        }

        public PorterDuffColorFilter get(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(generateCacheKey(i, mode)));
        }

        public PorterDuffColorFilter put(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(generateCacheKey(i, mode)), porterDuffColorFilter);
        }

        private static int generateCacheKey(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }
    }

    public static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        int[] state = drawable.getState();
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z = tintInfo.mHasTintList;
        if (z || tintInfo.mHasTintMode) {
            drawable.setColorFilter(createTintFilter(z ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : DEFAULT_MODE, iArr));
        } else {
            drawable.clearColorFilter();
        }
    }

    private static PorterDuffColorFilter createTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        ColorFilterLruCache colorFilterLruCache = COLOR_FILTER_CACHE;
        porterDuffColorFilter = colorFilterLruCache.get(i, mode);
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
            colorFilterLruCache.put(i, mode, porterDuffColorFilter);
        }
        return porterDuffColorFilter;
    }

    private void checkVectorDrawableSetup(Context context) {
        if (this.mHasCheckedVectorDrawableSetup) {
            return;
        }
        this.mHasCheckedVectorDrawableSetup = true;
        Drawable drawable = getDrawable(context, R$drawable.abc_vector_test);
        if (drawable == null || !isVectorDrawable(drawable)) {
            this.mHasCheckedVectorDrawableSetup = false;
            Segment$$ExternalSyntheticBUOutline1.m848m("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static boolean isVectorDrawable(Drawable drawable) {
        return (drawable instanceof VectorDrawableCompat) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }
}
