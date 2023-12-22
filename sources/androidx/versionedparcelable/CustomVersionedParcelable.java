package androidx.versionedparcelable;

import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public abstract class CustomVersionedParcelable implements VersionedParcelable {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onPostParceling() {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onPreParceling(boolean z) {
    }
}
