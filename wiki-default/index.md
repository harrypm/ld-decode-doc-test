# ld-decode Documentation

Welcome to the ld-decode Wiki.

ld-decode is an open-source effort to provide a "software defined LaserDisc player".  

The project aims to take RAW FM RF Archival captures of LaserDiscs, ideally captured by the [Domesday Duplicator](Hardware/Domesday-Duplicator.md) hardware and software (as its desgined for LaserDisc RF in mind), but can also take captures from other RF capture devices that make PCM style samples such as the [CX Cards](https://github.com/oyvindln/vhs-decode/wiki/CX-Cards), [MISRC](https://github.com/Stefan-Olt/MISRC), [Hsdaoh](https://github.com/oyvindln/vhs-decode/wiki/RF-Capture-Hardware#hsdaoh-method) and decode the RF back into usable component parts such as composite video, analogue audio and digital data and audio too.

The decoding process (like a real LaserDisc player) is a multi-stage process.  The raw RF must be demodulated (from the original FM signal) and filtered into video, audio and EFM data. This data is then framed and passed through a digital time-base correction (TBC) process which attempts to remove errors caused by the mechanical nature of a LaserDisc player during capture.

The resulting lossless 4fsc sampled TBC output is then run through a chroma-decoder (comb-filter in NTSC speak) which recovers the original color and can encode it as a digital RGB or YUV stream.  

This raw stream can be directly output to a Y4M file via the `ld-chroma-decoder` for example, but typically will be exported as lossless FFV1 or uncompressed v210 in 10-bit 4:2:2 YUV via [tbc-video-export](https://github.com/JuniorIsAJitterbug/tbc-video-export). This automates 90% of the commands to interact with the chroma-decoder and FFmpeg to encode and wrap your audio/video streams into a container like MKV or MOV, ready for viewing using media players such as [VLC](https://www.videolan.org/) or [MPC](https://github.com/clsid2/mpc-hc) or for further post-processing such as de-interlacing and upscaling for modern display use.

Please see the [Installation guide](Installation/Installation.md) for details of how to download and install ld-decode and the [basic usage guide](How-to-guides/Basic-usage-of-ld-decode.md) for instructions on how to use ld-decode.

An overview of how a LaserDisc player functions (which can help you to understand the component parts of ld-decode) is available from [this link](https://www.domesday86.com/?page_id=1379).

---

## Documentation Index

### Installation
- [Linux Installation](Installation/Installation.md)
- [Windows Build](https://github.com/oyvindln/vhs-decode/wiki/Windows-Build)
- [MacOS Build](https://github.com/oyvindln/vhs-decode/wiki/MacOS-Build)

### Hardware
- [Domesday Duplicator](Hardware/Domesday-Duplicator.md)

### How-to Guides
- [Basic usage of ld-decode](How-to-guides/Basic-usage-of-ld-decode.md)
- [Creating video from PAL decodes](How-to-guides/Creating-video-from-PAL-decodes.md)
- [Creating video from NTSC decodes](How-to-guides/Creating-video-from-NTSC-decodes.md)
- [Working with multiple discs](How-to-guides/Working-with-multiple-discs.md)
- [Working with subtitles](How-to-guides/Working-with-subtitles.md)
- [Disc images to download](How-to-guides/Disc-images-to-download.md)

### Tools
- [ld-decode](Tools/ld-decode.md)
- [ld-analyse](Tools/ld-analyse.md)
- [ld-chroma-decoder](Tools/ld-chroma-decoder.md)
- [ld-process-vbi](Tools/ld-process-vbi.md)
- [ld-export-metadata](Tools/ld-export-metadata.md)
- [ld-dropout-correct](Tools/ld-dropout-correct.md)
- [ld-process-efm](Tools/ld-process-efm.md)
- [ld-discmap](Tools/ld-discmap.md)
- [ld-disc-stacker](Tools/ld-disc-stacker.md)
- [ld-process-vits](Tools/ld-process-vits.md)
- [ld-lds-converter](Tools/ld-lds-converter.md)
- [ld-chroma-encoder](Tools/ld-chroma-encoder.md)
- [efm-decoder](Tools/efm-decoder.md)

### Scripts
- [ld-compress](Scripts/ld-compress.md)
- [ld-cut](Scripts/ld-cut.md)
- [ld-ldf-reader](Scripts/ld-ldf-reader.md)

### Development
- [JSON Metadata format](Development/JSON-Metadata-format.md)
- [File formats](Development/File-formats.md)
- [ld-decode Filter tuning parameters](Development/ld-decode-Filter-tuning-parameters.md)

### Support
- [Submitting a bug report](Support/Submitting-a-bug-report.md)
- [Social Media](Support/Social-Media.md)
- [ld-decode on the web](Support/ld-decode-on-the-web.md)
- [Donations](Support/Donations.md)

### Misc
- [TBC median stacking guide](Misc/TBC-median-stacking-guide.md)
- [Release Highlights](Misc/Release-Highlights.md)

---


# Current status


ld-decode revision 7 is the current release of the decoder and associated tools.  ld-decode is capable of decoding a wide-range of PAL and NTSC LaserDiscs with support for both analog and digital sound tracks (as well as EFM data tracks as used in Interactive Video systems such as the BBC Domesday system) 

The tools suite, decoders, and DomesDay Duplicators [capture app](Hardware/Domesday-Duplicator.md) now also have self contained builds for [Windows](https://github.com/oyvindln/vhs-decode/Windows-Build), [MacOS](https://github.com/oyvindln/vhs-decode/MacOS-Build) & [Linux](https://github.com/oyvindln/vhs-decode/Linux-Build) bundled alongside with [vhs-decode](https://github.com/oyvindln/vhs-decode/wiki/) (*supports a wide range of tape formats), [cvbs-decode](https://github.com/oyvindln/vhs-decode/wiki/CVBS-Composite-Decode) & [hifi-decode](https://github.com/oyvindln/vhs-decode/hifi-decode) projects.

![Release Highlights](Misc/assets/rev6_release.jpg)
