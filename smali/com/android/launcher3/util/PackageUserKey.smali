.class public Lcom/android/launcher3/util/PackageUserKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mHashCode:I

.field public mPackageName:Ljava/lang/String;

.field public mUser:Landroid/os/UserHandle;

.field public mWidgetCategory:I


# direct methods
.method public constructor <init>(ILandroid/os/UserHandle;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/util/PackageUserKey;-><init>(ILandroid/os/UserHandle;)V

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v1, p0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    iget v2, p1, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    .line 4
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/launcher3/util/PackageUserKey;->mHashCode:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/android/launcher3/util/PackageUserKey;->mWidgetCategory:I

    .line 4
    iput-object p3, p0, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/util/PackageUserKey;->mHashCode:I

    return-void
.end method

.method public update(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public updateFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/PackageUserKey;->update(Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
