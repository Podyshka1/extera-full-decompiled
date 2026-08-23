package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
final class BackStackRecord extends FragmentTransaction implements FragmentManager.OpGenerator {
    boolean mBeingSaved;
    boolean mCommitted;
    int mIndex;
    final FragmentManager mManager;

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }

    public void dump(String str, PrintWriter printWriter) {
        dump(str, printWriter, true);
    }

    public void dump(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mOps.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.mOps.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction.C0633Op c0633Op = (FragmentTransaction.C0633Op) this.mOps.get(i);
            switch (c0633Op.mCmd) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + c0633Op.mCmd;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(c0633Op.mFragment);
            if (z) {
                if (c0633Op.mEnterAnim != 0 || c0633Op.mExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(c0633Op.mEnterAnim));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(c0633Op.mExitAnim));
                }
                if (c0633Op.mPopEnterAnim != 0 || c0633Op.mPopExitAnim != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(c0633Op.mPopEnterAnim));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(c0633Op.mPopExitAnim));
                }
            }
        }
    }

    BackStackRecord(FragmentManager fragmentManager) {
        super(fragmentManager.getFragmentFactory(), fragmentManager.getHost() != null ? fragmentManager.getHost().getContext().getClassLoader() : null);
        this.mIndex = -1;
        this.mBeingSaved = false;
        this.mManager = fragmentManager;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    void doAddOp(int i, Fragment fragment, String str, int i2) {
        super.doAddOp(i, fragment, str, i2);
        fragment.mFragmentManager = this.mManager;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public FragmentTransaction remove(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager != null && fragmentManager != this.mManager) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        return super.remove(fragment);
    }

    void bumpBackStackNesting(int i) {
        if (this.mAddToBackStack) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.mOps.size();
            for (int i2 = 0; i2 < size; i2++) {
                FragmentTransaction.C0633Op c0633Op = (FragmentTransaction.C0633Op) this.mOps.get(i2);
                Fragment fragment = c0633Op.mFragment;
                if (fragment != null) {
                    fragment.mBackStackNesting += i;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + c0633Op.mFragment + " to " + c0633Op.mFragment.mBackStackNesting);
                    }
                }
            }
        }
    }

    public void runOnCommitRunnables() {
        if (this.mCommitRunnables != null) {
            for (int i = 0; i < this.mCommitRunnables.size(); i++) {
                ((Runnable) this.mCommitRunnables.get(i)).run();
            }
            this.mCommitRunnables = null;
        }
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commit() {
        return commitInternal(false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNow() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, true);
    }

    int commitInternal(boolean z) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new LogWriter("FragmentManager"));
            dump("  ", printWriter);
            printWriter.close();
        }
        this.mCommitted = true;
        if (this.mAddToBackStack) {
            this.mIndex = this.mManager.allocBackStackIndex();
        } else {
            this.mIndex = -1;
        }
        this.mManager.enqueueAction(this, z);
        return this.mIndex;
    }

    @Override // androidx.fragment.app.FragmentManager.OpGenerator
    public boolean generateOps(ArrayList arrayList, ArrayList arrayList2) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.mAddToBackStack) {
            return true;
        }
        this.mManager.addBackStackState(this);
        return true;
    }

    void executeOps() {
        int size = this.mOps.size();
        for (int i = 0; i < size; i++) {
            FragmentTransaction.C0633Op c0633Op = (FragmentTransaction.C0633Op) this.mOps.get(i);
            Fragment fragment = c0633Op.mFragment;
            if (fragment != null) {
                fragment.mBeingSaved = this.mBeingSaved;
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.mTransition);
                fragment.setSharedElementNames(this.mSharedElementSourceNames, this.mSharedElementTargetNames);
            }
            switch (c0633Op.mCmd) {
                case 1:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.addFragment(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0633Op.mCmd);
                case 3:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.removeFragment(fragment);
                    break;
                case 4:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.hideFragment(fragment);
                    break;
                case 5:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.showFragment(fragment);
                    break;
                case 6:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.detachFragment(fragment);
                    break;
                case 7:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, false);
                    this.mManager.attachFragment(fragment);
                    break;
                case 8:
                    this.mManager.setPrimaryNavigationFragment(fragment);
                    break;
                case 9:
                    this.mManager.setPrimaryNavigationFragment(null);
                    break;
                case 10:
                    this.mManager.setMaxLifecycle(fragment, c0633Op.mCurrentMaxState);
                    break;
            }
        }
    }

    void executePopOps() {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            FragmentTransaction.C0633Op c0633Op = (FragmentTransaction.C0633Op) this.mOps.get(size);
            Fragment fragment = c0633Op.mFragment;
            if (fragment != null) {
                fragment.mBeingSaved = this.mBeingSaved;
                fragment.setPopDirection(true);
                fragment.setNextTransition(FragmentManager.reverseTransit(this.mTransition));
                fragment.setSharedElementNames(this.mSharedElementTargetNames, this.mSharedElementSourceNames);
            }
            switch (c0633Op.mCmd) {
                case 1:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.removeFragment(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + c0633Op.mCmd);
                case 3:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.addFragment(fragment);
                    break;
                case 4:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.showFragment(fragment);
                    break;
                case 5:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.hideFragment(fragment);
                    break;
                case 6:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.attachFragment(fragment);
                    break;
                case 7:
                    fragment.setAnimations(c0633Op.mEnterAnim, c0633Op.mExitAnim, c0633Op.mPopEnterAnim, c0633Op.mPopExitAnim);
                    this.mManager.setExitAnimationOrder(fragment, true);
                    this.mManager.detachFragment(fragment);
                    break;
                case 8:
                    this.mManager.setPrimaryNavigationFragment(null);
                    break;
                case 9:
                    this.mManager.setPrimaryNavigationFragment(fragment);
                    break;
                case 10:
                    this.mManager.setMaxLifecycle(fragment, c0633Op.mOldMaxState);
                    break;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    Fragment expandOps(ArrayList arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i = 0;
        while (i < this.mOps.size()) {
            FragmentTransaction.C0633Op c0633Op = (FragmentTransaction.C0633Op) this.mOps.get(i);
            int i2 = c0633Op.mCmd;
            if (i2 == 1) {
                arrayList.add(c0633Op.mFragment);
            } else if (i2 == 2) {
                Fragment fragment3 = c0633Op.mFragment;
                int i3 = fragment3.mContainerId;
                boolean z = false;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Fragment fragment4 = (Fragment) arrayList.get(size);
                    if (fragment4.mContainerId == i3) {
                        if (fragment4 == fragment3) {
                            z = true;
                        } else {
                            if (fragment4 == fragment2) {
                                this.mOps.add(i, new FragmentTransaction.C0633Op(9, fragment4, true));
                                i++;
                                fragment2 = null;
                            }
                            FragmentTransaction.C0633Op c0633Op2 = new FragmentTransaction.C0633Op(3, fragment4, true);
                            c0633Op2.mEnterAnim = c0633Op.mEnterAnim;
                            c0633Op2.mPopEnterAnim = c0633Op.mPopEnterAnim;
                            c0633Op2.mExitAnim = c0633Op.mExitAnim;
                            c0633Op2.mPopExitAnim = c0633Op.mPopExitAnim;
                            this.mOps.add(i, c0633Op2);
                            arrayList.remove(fragment4);
                            i++;
                        }
                    }
                }
                if (z) {
                    this.mOps.remove(i);
                    i--;
                } else {
                    c0633Op.mCmd = 1;
                    c0633Op.mFromExpandedOp = true;
                    arrayList.add(fragment3);
                }
            } else if (i2 == 3 || i2 == 6) {
                arrayList.remove(c0633Op.mFragment);
                Fragment fragment5 = c0633Op.mFragment;
                if (fragment5 == fragment2) {
                    this.mOps.add(i, new FragmentTransaction.C0633Op(9, fragment5));
                    i++;
                    fragment2 = null;
                }
            } else if (i2 != 7) {
                if (i2 == 8) {
                    this.mOps.add(i, new FragmentTransaction.C0633Op(9, fragment2, true));
                    c0633Op.mFromExpandedOp = true;
                    i++;
                    fragment2 = c0633Op.mFragment;
                }
            }
            i++;
        }
        return fragment2;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    Fragment trackAddedFragmentsInPop(ArrayList arrayList, Fragment fragment) {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            FragmentTransaction.C0633Op c0633Op = (FragmentTransaction.C0633Op) this.mOps.get(size);
            int i = c0633Op.mCmd;
            if (i == 1) {
                arrayList.remove(c0633Op.mFragment);
            } else if (i != 3) {
                switch (i) {
                    case 6:
                        arrayList.add(c0633Op.mFragment);
                        break;
                    case 8:
                        fragment = null;
                        break;
                    case 9:
                        fragment = c0633Op.mFragment;
                        break;
                    case 10:
                        c0633Op.mCurrentMaxState = c0633Op.mOldMaxState;
                        break;
                }
            }
        }
        return fragment;
    }

    public String getName() {
        return this.mName;
    }
}
