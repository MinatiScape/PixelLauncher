.class public LV1/h;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, LV1/h;->a:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, LV1/h;->a:Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;->l(Lcom/google/android/apps/nexuslauncher/model/NexusLauncherModelDelegate;)V

    return-void
.end method
