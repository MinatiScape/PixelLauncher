.class public final Lt2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/DateValidatorPointForward;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/material/datepicker/DateValidatorPointForward;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/datepicker/DateValidatorPointForward;-><init>(JLt2/n;)V

    return-object p0
.end method

.method public b(I)[Lcom/google/android/material/datepicker/DateValidatorPointForward;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/google/android/material/datepicker/DateValidatorPointForward;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt2/n;->a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lt2/n;->b(I)[Lcom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object p0

    return-object p0
.end method
