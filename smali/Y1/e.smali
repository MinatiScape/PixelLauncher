.class public LY1/e;
.super Landroid/content/ContextWrapper;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/ActivityContext;


# instance fields
.field public final synthetic b:LY1/f;


# direct methods
.method public constructor <init>(LY1/f;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, LY1/e;->b:LY1/f;

    .line 2
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 0

    .line 1
    iget-object p0, p0, LY1/e;->b:LY1/f;

    invoke-static {p0}, LY1/f;->d(LY1/f;)Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    .line 1
    iget-object p0, p0, LY1/e;->b:LY1/f;

    invoke-static {p0}, LY1/f;->c(LY1/f;)LY1/g;

    move-result-object p0

    return-object p0
.end method
