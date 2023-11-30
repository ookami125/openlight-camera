package co.openlight.lightprocessingservice;

import android.content.ComponentName;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class ProcessRequest implements Parcelable {
    public static final String ACTION_PROCESSING = "co.openlight.lightprocessingservice.action.PROCESSING";
    public static final int BOKEH_MAX_FNUM = 15;
    public static final int BOKEN_MIN_FNUM = 2;
    public static final Parcelable.Creator<ProcessRequest> CREATOR = new Parcelable.Creator<ProcessRequest>() { // from class: co.openlight.lightprocessingservice.ProcessRequest.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessRequest createFromParcel(Parcel parcel) {
            return new ProcessRequest(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProcessRequest[] newArray(int i) {
            return new ProcessRequest[i];
        }
    };
    public static final String EXTRA_PROCESS_REQUEST = "co.openlight.lightprocessingservice.extra.PROCESS_REQUEST";
    public static final String EXTRA_PROCESS_REQUEST_STATUS = "co.openlight.lightprocessingservice.extra.PROCESS_REQUEST_STATUS";
    private int mBokeh;
    private ComponentName mComponentName;
    private long mDateTaken;
    private boolean mDeleteLri;
    private boolean mDeleteThumbnail;
    private boolean mGDepth;
    private String mLriPath;
    private boolean mNeedsPostProcessing;
    private String mProcessedDngPath;
    private String mProcessedJpegPath;
    private ProcessingLevel mProcessingLevel;
    private ProcessingProfile mProcessingProfile;
    private boolean mSupportSuperRes;
    private String mTag;
    private String mThumbnailPath;
    private boolean mUpdateMediaStore;
    private int mWidth = -1;
    private int mHeight = -1;
    private float mFocusDepthX = -1.0f;
    private float mFocusDepthY = -1.0f;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ProcessRequest(Parcel parcel) {
        readFromParcel(parcel);
    }

    public ProcessRequest() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mLriPath);
        parcel.writeSerializable(this.mProcessingProfile);
        parcel.writeSerializable(this.mProcessingLevel);
        parcel.writeInt(this.mBokeh);
        parcel.writeString(this.mProcessedJpegPath);
        parcel.writeByte(this.mGDepth ? (byte) 1 : (byte) 0);
        parcel.writeString(this.mProcessedDngPath);
        parcel.writeInt(this.mWidth);
        parcel.writeInt(this.mHeight);
        parcel.writeByte(this.mSupportSuperRes ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.mDeleteLri ? (byte) 1 : (byte) 0);
        parcel.writeFloat(this.mFocusDepthX);
        parcel.writeFloat(this.mFocusDepthY);
        parcel.writeByte(this.mUpdateMediaStore ? (byte) 1 : (byte) 0);
        parcel.writeString(this.mTag);
        parcel.writeString(this.mThumbnailPath);
        parcel.writeByte(this.mDeleteThumbnail ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.mDateTaken);
        parcel.writeByte(this.mNeedsPostProcessing ? (byte) 1 : (byte) 0);
        int i2 = this.mComponentName != null ? 1 : 0;
        parcel.writeByte((byte) i2);
        if (i2 != 0) {
            this.mComponentName.writeToParcel(parcel, i);
        }
    }

    private void readFromParcel(Parcel parcel) {
        this.mLriPath = parcel.readString();
        this.mProcessingProfile = (ProcessingProfile) parcel.readSerializable();
        this.mProcessingLevel = (ProcessingLevel) parcel.readSerializable();
        this.mBokeh = parcel.readInt();
        this.mProcessedJpegPath = parcel.readString();
        this.mGDepth = parcel.readByte() != 0;
        this.mProcessedDngPath = parcel.readString();
        this.mWidth = parcel.readInt();
        this.mHeight = parcel.readInt();
        this.mSupportSuperRes = parcel.readByte() != 0;
        this.mDeleteLri = parcel.readByte() != 0;
        this.mFocusDepthX = parcel.readFloat();
        this.mFocusDepthY = parcel.readFloat();
        this.mUpdateMediaStore = parcel.readByte() != 0;
        this.mTag = parcel.readString();
        this.mThumbnailPath = parcel.readString();
        this.mDeleteThumbnail = parcel.readByte() != 0;
        this.mDateTaken = parcel.readLong();
        this.mNeedsPostProcessing = parcel.readByte() != 0;
        if (parcel.readByte() != 0) {
            this.mComponentName = ComponentName.readFromParcel(parcel);
        }
    }

    public ProcessRequest lriPath(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Lri Path cannot be null");
        }
        this.mLriPath = str;
        return this;
    }

    public ProcessRequest processedJpegPath(String str) {
        this.mProcessedJpegPath = str;
        return this;
    }

    public ProcessRequest processedDngPath(String str) {
        this.mProcessedDngPath = str;
        return this;
    }

    public ProcessRequest profile(ProcessingProfile processingProfile) {
        this.mProcessingProfile = processingProfile;
        return this;
    }

    public ProcessRequest level(ProcessingLevel processingLevel) {
        this.mProcessingLevel = processingLevel;
        return this;
    }

    public ProcessRequest bokeh(int i) {
        if (i == 0 || (i >= 2 && i <= 15)) {
            this.mBokeh = i;
            return this;
        }
        throw new IllegalArgumentException("Bokeh value must be between 2 and 15. Or 0 if not changes to be made to bokeh");
    }

    public ProcessRequest size(int i, int i2) {
        this.mWidth = i;
        this.mHeight = i2;
        return this;
    }

    public ProcessRequest enabledSuperRes(boolean z) {
        this.mSupportSuperRes = z;
        return this;
    }

    public ProcessRequest deleteLri(boolean z) {
        this.mDeleteLri = z;
        return this;
    }

    public ProcessRequest updateMediaStore(boolean z) {
        this.mUpdateMediaStore = z;
        return this;
    }

    public ProcessRequest needsPostProcessing(boolean z) {
        this.mNeedsPostProcessing = z;
        return this;
    }

    public ProcessRequest focusDepthPoint(float f, float f2) {
        if ((f < 0.0f && f != -1.0f) || f > 1.0f || ((f2 < 0.0f && f2 != -1.0f) || f2 > 1.0f)) {
            throw new IllegalArgumentException("Invalid coordinates");
        }
        this.mFocusDepthX = f;
        this.mFocusDepthY = f2;
        return this;
    }

    public ProcessRequest tag(String str) {
        this.mTag = str;
        return this;
    }

    public ProcessRequest thumbnail(String str) {
        this.mThumbnailPath = str;
        return this;
    }

    public ProcessRequest deleteThumbnail(boolean z) {
        this.mDeleteThumbnail = z;
        return this;
    }

    public ProcessRequest gDepth(boolean z) {
        this.mGDepth = z;
        return this;
    }

    public ProcessRequest dateTaken(long j) {
        this.mDateTaken = j;
        return this;
    }

    public ProcessRequest broadcastComponent(ComponentName componentName) {
        if (componentName == null) {
            throw new IllegalArgumentException("component name cannot be null");
        }
        this.mComponentName = componentName;
        return this;
    }

    public String getLriPath() {
        return this.mLriPath;
    }

    public ProcessingProfile getProfile() {
        return this.mProcessingProfile;
    }

    public ProcessingLevel getLevel() {
        return this.mProcessingLevel;
    }

    public String getProcessedJpegPath() {
        return this.mProcessedJpegPath;
    }

    public String getProcessedDngPath() {
        return this.mProcessedDngPath;
    }

    public String getThumbnailPath() {
        return this.mThumbnailPath;
    }

    public boolean isGDepthEnabled() {
        return this.mGDepth;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getBokeh() {
        return this.mBokeh;
    }

    public boolean isSuperResSupported() {
        return this.mSupportSuperRes;
    }

    public boolean shouldDeleteThumbnail() {
        return this.mDeleteThumbnail;
    }

    public boolean shouldDeleteLri() {
        return this.mDeleteLri;
    }

    public float getFocusDepthX() {
        return this.mFocusDepthX;
    }

    public float getFocusDepthY() {
        return this.mFocusDepthY;
    }

    public boolean shouldUpdateMediaStore() {
        return this.mUpdateMediaStore;
    }

    public boolean isPostProcessingEnabled() {
        return this.mNeedsPostProcessing;
    }

    public String getTag() {
        return this.mTag;
    }

    public long getDateTaken() {
        return this.mDateTaken;
    }

    public ComponentName getBroadcastComponent() {
        return this.mComponentName;
    }

    public boolean validate() throws IllegalArgumentException {
        if (this.mLriPath == null) {
            throw new IllegalArgumentException("Lri Path cannot be null");
        }
        if (this.mProcessedJpegPath == null && this.mProcessedDngPath == null) {
            throw new IllegalArgumentException("The processed image path for a jpeg or dng must be provided");
        }
        if (this.mProcessingLevel == null) {
            throw new IllegalArgumentException("Level needs to be specified");
        }
        if (this.mProcessingProfile == null) {
            throw new IllegalArgumentException("Profile needs to be specified");
        }
        if (this.mProcessingProfile == ProcessingProfile.THUMBNAIL && this.mProcessingLevel != ProcessingLevel.ZERO) {
            throw new IllegalArgumentException("Thumbnail processing is only supported a level ZERO");
        }
        if (!this.mGDepth || this.mProcessingProfile == ProcessingProfile.DESKTOP) {
            return true;
        }
        throw new IllegalArgumentException("Desktop Profile is required for creating gDepth.");
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ComponentName componentName;
        if (obj == this) {
            return true;
        }
        if (obj instanceof ProcessRequest) {
            ProcessRequest processRequest = (ProcessRequest) obj;
            if (this.mProcessedJpegPath != null) {
                z = this.mProcessedJpegPath.equals(processRequest.mProcessedJpegPath);
            } else {
                z = processRequest.mProcessedJpegPath == null;
            }
            if (this.mProcessedDngPath != null) {
                z2 = this.mProcessedDngPath.equals(processRequest.mProcessedDngPath);
            } else {
                z2 = processRequest.mProcessedDngPath == null;
            }
            if (this.mThumbnailPath != null) {
                z3 = this.mThumbnailPath.equals(processRequest.mThumbnailPath);
            } else {
                z3 = processRequest.mThumbnailPath == null;
            }
            if (this.mTag != null) {
                z4 = this.mTag.equals(processRequest.mTag);
            } else {
                z4 = processRequest.mTag == null;
            }
            return this.mLriPath.equals(processRequest.mLriPath) && z2 && z && z4 && z3 && this.mGDepth == processRequest.mGDepth && this.mProcessingProfile == processRequest.mProcessingProfile && this.mProcessingLevel == processRequest.mProcessingLevel && this.mWidth == processRequest.mWidth && this.mHeight == processRequest.mHeight && this.mBokeh == processRequest.mBokeh && this.mSupportSuperRes == processRequest.mSupportSuperRes && this.mDeleteLri == processRequest.mDeleteLri && this.mFocusDepthX == processRequest.mFocusDepthX && this.mFocusDepthY == processRequest.mFocusDepthY && this.mUpdateMediaStore == processRequest.mUpdateMediaStore && this.mDeleteThumbnail == processRequest.mDeleteThumbnail && this.mDateTaken == processRequest.mDateTaken && this.mNeedsPostProcessing == processRequest.mNeedsPostProcessing && (this.mComponentName == null ? processRequest.mComponentName == null : !((componentName = processRequest.mComponentName) == null || !this.mComponentName.flattenToString().equals(componentName.flattenToString())));
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Lri Path ");
        sb.append(this.mLriPath);
        sb.append(" Processed Jpeg Path ");
        sb.append(this.mProcessedJpegPath);
        sb.append(" Processed Dng Path ");
        sb.append(this.mProcessedDngPath);
        sb.append(" Use GDepth ");
        sb.append(this.mGDepth);
        sb.append(" Profile ");
        sb.append(this.mProcessingProfile);
        sb.append(" Level ");
        sb.append(this.mProcessingLevel);
        sb.append(" Width ");
        sb.append(this.mWidth);
        sb.append(" Height ");
        sb.append(this.mHeight);
        sb.append(" Bokeh ");
        sb.append(this.mBokeh);
        sb.append(" SuperRes Device ");
        sb.append(this.mSupportSuperRes);
        sb.append(" Delete LRI ");
        sb.append(this.mDeleteLri);
        sb.append(" FocusDepthX ");
        sb.append(this.mFocusDepthX);
        sb.append(" FocusDepthY ");
        sb.append(this.mFocusDepthY);
        sb.append(" Update Media Store ");
        sb.append(this.mUpdateMediaStore);
        sb.append(" Tag ");
        sb.append(this.mTag);
        sb.append(" Delete Thumbnail ");
        sb.append(this.mDeleteThumbnail);
        sb.append(" Thumbnail Path ");
        sb.append(this.mThumbnailPath);
        sb.append(" Date Taken in UTC Millis ");
        sb.append(this.mDateTaken);
        sb.append(" Needs Post Processing ");
        sb.append(this.mNeedsPostProcessing);
        sb.append(" Broadcast to Component ");
        sb.append(this.mComponentName == null ? null : this.mComponentName.flattenToString());
        return sb.toString();
    }

    public int hashCode() {
        Object[] objArr = new Object[20];
        objArr[0] = this.mLriPath;
        objArr[1] = this.mProcessedJpegPath;
        objArr[2] = this.mProcessedDngPath;
        objArr[3] = Boolean.valueOf(this.mGDepth);
        objArr[4] = this.mProcessingProfile;
        objArr[5] = this.mProcessingLevel;
        objArr[6] = Integer.valueOf(this.mWidth);
        objArr[7] = Integer.valueOf(this.mHeight);
        objArr[8] = Integer.valueOf(this.mBokeh);
        objArr[9] = Boolean.valueOf(this.mSupportSuperRes);
        objArr[10] = Boolean.valueOf(this.mDeleteLri);
        objArr[11] = Float.valueOf(this.mFocusDepthX);
        objArr[12] = Float.valueOf(this.mFocusDepthY);
        objArr[13] = Boolean.valueOf(this.mUpdateMediaStore);
        objArr[14] = this.mTag;
        objArr[15] = this.mThumbnailPath;
        objArr[16] = Boolean.valueOf(this.mDeleteThumbnail);
        objArr[17] = Long.valueOf(this.mDateTaken);
        objArr[18] = Boolean.valueOf(this.mNeedsPostProcessing);
        objArr[19] = this.mComponentName == null ? null : this.mComponentName.flattenToString();
        return Objects.hash(objArr);
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public enum ProcessingProfile {
        DESKTOP(3),
        CAMERA(2),
        MOBILE(1),
        THUMBNAIL(0);
        
        private final int mProfileNumber;

        ProcessingProfile(int i) {
            this.mProfileNumber = i;
        }

        public int getNumber() {
            return this.mProfileNumber;
        }
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public enum ProcessingLevel {
        ZERO(0),
        ONE(1),
        TWO(2);
        
        private final int mLevel;

        ProcessingLevel(int i) {
            this.mLevel = i;
        }

        public int getNumber() {
            return this.mLevel;
        }
    }
}